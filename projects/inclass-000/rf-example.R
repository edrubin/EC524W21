
# Setup ----------------------------------------------------------------------------------
  # Packages
  library(pacman)
  p_load(tidyverse, data.table, tidymodels, parallel, magrittr, here)

# Load data ------------------------------------------------------------------------------
  # Load the training dataset
  train_dt = here("data", "train.csv") %>% fread()
  # Load the testing dataset
  test_dt = here("data", "test.csv") %>% fread()
  # Join the datasets together
  all_dt = rbindlist(
    list(train_dt, test_dt),
    use.names = T, fill = T
  )

# Remake split ---------------------------------------------------------------------------
  # Find indices of training and testing datasets
  i_train = 1:nrow(train_dt)
  i_test = (nrow(train_dt)+1):nrow(all_dt)
  # Define the custom-split object
  kaggle_split = make_splits(
    ind = list(analysis = i_train, assessment = i_test),
    data= all_dt
  )
  # Impose the split (yes, this is redundant)
  train_dt = kaggle_split %>% training()

# Cleaning -------------------------------------------------------------------------------
  # Compare dimensions with and without missing observations
  train_dt %>% dim()
  train_dt %>% na.omit() %>% dim()
  
# Recipe ---------------------------------------------------------------------------------
  # Set up a recipe to create a factor of the label
  simple_recipe = 
    recipe(label ~ ., data = train_dt) %>% 
    step_mutate(label = as.factor(label)) %>% 
    step_pca(all_predictor(), threshold = 0.99) %>% 
    step_rm(starts_with("pixel"))

# Tuning our random forest with OOB error ------------------------------------------------
  # The tuning grid
  rf_grid = expand_grid(
    min_n = c(10, 100),
    mtry = c(15, 30, 45)
  )
  # Our RF function
  rf_i = function(i) {
    # The RF model for iteration i
    model_rf_i = 
      rand_forest(
        trees = 100,
        min_n = rf_grid$min_n[i],
        mtry = rf_grid$mtry[i],
      ) %>%
      set_mode("classification") %>%
      set_engine(
        "ranger",
        splitrule = "gini"
      )
    # The workflow for iteration i
    wf_i = workflow() %>% add_model(model_rf_i) %>% add_recipe(simple_recipe)
    # Fit it!
    fit_i = wf_i %>% fit(train_dt)
    # Return DF w/ OOB error and the hyperparameters
    tibble(
      mtry = rf_grid$mtry[i],
      min_n = rf_grid$min_n[i],
      # Note: OOB error is buried
      error_oob = fit_i$fit$fit$fit$prediction.error
    )  
  }
  # Run it in parallel
  rf_tuning = mclapply(
    X = 1:nrow(rf_grid),
    FUN = rf_i,
    mc.cores = min(detectCores(), nrow(rf_grid))
  ) %>% rbindlist()
  # Order the models by error
  setorder(rf_tuning, error_oob)
  rf_tuning

# Best model and workflow ----------------------------------------------------------------
  # Define our best RF model
  rf_best = rand_forest(
    trees = 100,
    min_n = tune(),
    mtry = tune()
  ) %>% set_mode("classification") %>% 
  set_engine("ranger", splitrule = "gini")
  # Finalize the workflow with the results from our OOB table
  wf_rf_best = 
    workflow() %>%
    add_recipe(simple_recipe) %>% 
    add_model(rf_best) %>% 
    finalize_workflow(parameters = rf_tuning[1,])

# Last fit -------------------------------------------------------------------------------
  # The last fit!
  final_fit = last_fit(
    wf_rf_best,
    split = kaggle_split
  )
  # Save the predictions
  final_fit %>%
    collect_predictions() %>%
    transmute(
      ImageId = 1:n(),
      Label = .pred_class %>% as.character() %>% as.integer()
    ) %>% 
    write_csv("data/rf-pred.csv")
