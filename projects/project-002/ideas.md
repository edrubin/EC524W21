# Ideas

- Digest the prediction-policy problems paper—what was the point, what did you learn, how could you apply it?
- Find an article/blog describing an interesting ML application.
	- Describe the prediction problem.
	- Which ML methods/techniques were used?
	- How did they avoid overfitting? 
- Use `tidymodels` to set up a recipe that cleans the Ames dataset.
- Using `tidymodels`, fit four models 
	1. Your "best" linear regression model (your best performer so far).
	2. A cross-validated ridge-regression model (CV to tune the penalty).
	3. A cross-validated lasso model (CV to tune the penalty).
	4. A cross-validated elasticnet model (CV to tune the penalty and mixture).
- *Hint:* Remember that penalized regression can only "choose" between inputs that it is given.
- Submit all four models to Kaggle.
- Which models are most flexible? Explain your answer.
- Compare their performances.
- Do the penalized models select similar variables to those that you selected?
- What are the values of the "best" (in CV performance) hyperparameters (penalty and mixture)?
- What is the most interesting/surprising thing you learned in this penalized-regression assignment?
