# Prediction

Welcome to day two of our prediction course. Today we're going to try to predict housing-sales prices using a very rich dataset on housing attributes.

**Purpose** We have three main goals with this project.

- We want to you **start thinking about prediction** scenarios and how they may differ from other settings in econometrics—goals, challenges, data, decisions, *etc*.
- We also thought you could use a **refresher/review of `R`**.
- We would like to introduce you to **[Kaggle](https://kaggle.com)**.

## Help!

I put together a very [simple example of a Kaggle notebook](https://www.kaggle.com/edwardarubin/project-000-example).

## Steps

0. (*Optional*) Form a small group (1 or 2 people).
1. Read about [the competition](https://www.kaggle.com/c/house-prices-advanced-regression-techniques/)
2. Open a notebook (or an `R` script if you're working on your own computer).
   - If you're working with a notebook on Kaggle: Sign in, start a new notebook (use the *Notebooks* tab in the competition), and make sure the folder `house-price-advanced-regression-techniques` shows up in your `input` folder. You access the `input` directory using `"../input"`.
   - If you want to work on your own computer: [Download the data](https://www.kaggle.com/c/house-prices-advanced-regression-techniques/data) (Search the page for "Download All").
3. Load `train.csv` dataset into R. This dataset is what you will use to *train* your model.
   - If you're `R`usty, recall that the `tidyverse` links together a bunch of very helpful packages (and thus, their functions). For example, `tidyverse` includes `readr`'s `read_csv()` function and `dplyr`'s functions for manipulating data (`select()`, `mutate()`, `filter()`, *etc.*).
   - Get a feel for the data—graphs, summaries, etc.
   - Don't forget `View()`—sometimes it is nice just to see your data.
   - The competition's [website describes variables](https://www.kaggle.com/c/house-prices-advanced-regression-techniques/data)—as does the file `data_description.txt`.
   - **Don't forget:** Commments (`# This is a comment`) in your code are important.
4. Estimate some econometric models of `SalePrice` using the training data.
   - You're in charge here—do whatever you think will achieve good (out-of-sample) predictions.
   - *Hint:* You need a way to "deal with" missing values (`NA`s)—and you need to apply this strategy in both the training and in the testing datasets.
   - *Another hint:* You probably don't want to use `Id` when fitting your model.
   - *Note:* Some of the variables' names may make `R` angry. For example, `R` doesn't like when a variable name starts with a number (e.g., `1stFlrSF`).
5. Use your trained model(s) to create an estimate for `SalePrice` in the test data.
   - *Hint:* The `predict()` function seems like a good candidate.
   - *Another hint:* The `predict()` function has a helpful argument called `newdata` that allows you to make predictions onto new data—observations your trained/fitted model has yet to see.
6. [Submit your predictions to the competition on Kaggle](https://www.kaggle.com/c/house-prices-advanced-regression-techniques/submit).
   - *Note:* Your submission should be a CSV with only an `Id` column and a `SalePrice` column that has your predicted sale price.
   - *Hint:* You can see an example submission file (1) on Kaggle and (2) in the files you downloaded to get the training and testing data.

## To turn in

7. How did you do? Report your (1) TeamName, (2) Rank (#), and (3) Score.
8. How did you choose your variables? How might this process be improved?
9. What do you think could improve your predictions? Think about the decisions you made for (i) data-cleaning and (ii) modeling—messy/complex variables, modeling assumptions, *etc.*)
10. How does prediction differ from the topics you've typically focused on in econometrics (_e.g._, estimating treatment effects)?

**Each person** should submit (electronically on Canvas) a short write up with answers to questions 7–10 (above).

Even if you worked in a group, I want you to write your **individual reflections** (questions 8–10). Don't be lazy. Don't copy other people's work.
