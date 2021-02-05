# Cross validation, penalized regression, and `tidymodels`

## Overview

Let's return to the [House Prices Kaggle competition](https://www.kaggle.com/c/house-prices-advanced-regression-techniques/overview/evaluation) on more time! 

In this problem set, we will use `tidymodels` to cross validate (and tune) the penalized-regression models (shrinkage methods) we've been discussing in class.

**What to submit:** Submit one of two things:

- *If you're working on Kaggle:* Submit the URL to your Kaggle notebook (with sharing enabled and the notebook saved)
- *If you're working in RStudio:* Submit a PDF generated from your RMarkdown file or HTML document from your RMarkdown notebook.

Either way: Your submission should include your answers (not in the code chunks) to the individual questions **and** your well-commented `R` code.

## Prediction time

1\. Use `tidymodels` to set up a recipe that cleans the Ames (housing prices) dataset.

2\. Using `tidymodels`, fit (and tune, where relevant) four models:

- Your "best" linear regression model (your best performer so far).
- A cross-validated ridge-regression model (CV to tune the penalty).
- A cross-validated lasso model (CV to tune the penalty).
- A cross-validated elasticnet model (CV to tune the penalty and mixture).

3\. *Hint:* Remember that penalized regression can only "choose" between inputs that it is given.

4\. Submit all four models to Kaggle.

## Reflection

5\. Which models are most flexible? Explain your answer.

6\. Compare the models' performances. Any surprises?

7\. Do the penalized models select similar variables to those that you selected? Do they 'select' similar models to each other?

8\. What are the values of the "best" (using CV performance) hyperparameters (penalty and mixture)? What does this tell you about the tradeoff between ridge and lasso in this predition problem?

9\. What is the most interesting/surprising thing you learned in this penalized-regression assignment?

## There's more!

10\. Briefly summarize what you learned from the prediction-policy problems paper:

- What was the point?
- What new things did you learn?
- How might you apply it to topics that interest you?

11. Find an article/blog describing an interesting ML application.

- Describe the prediction problem.
- Which ML methods/techniques were used?
- How did they avoid overfitting? 
- Include a link, the title, and the author/organization's name.
