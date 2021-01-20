# Validation

## Overview

We're returning to the [House Prices Kaggle competition](https://www.kaggle.com/c/house-prices-advanced-regression-techniques/overview/evaluation)! This time, we're going to employ a basic validation-set approach to try to maximize out-of-sample model performance and avoid overfitting.

## Guide

**Step 0** Split the `train.csv` dataset into two subsets:

1. An actual *training set* (70–80% of the observations from `train.csv`)
1. A *validation set* (the remaining data)

*Note:* Don't forget to clean your dataset.

**Step 1** Estimate *at least* five models that predict the sales prices of houses. Remember: Your goal is to accurately predict the prices **out of sample**. 

- Be creative—think about interactions, polynomials, *etc*.
- One of these models should be your 'best' model from the last assignment.

**Step 2** Use these fitted models to predict prices in your validation set. Evaluate their performances using MSE.

**Step 3** For each of the five models, make predictions on `test.csv`. Submit your these predictions (**for each of your models**) to Kaggle.

**Step 4** Average the predictions for each observation in `test.csv` that you made in **Step 3**. Submit these observation-level averages (averaging across models) as another submission to Kaggle.

**Step 5** Turn in your Kaggle notebook (or HTML/PDF outputted from RMD) that includes

1. Your commented code
1. Brief descriptions of what you did in each of the steps above (in plain English—not in code or math)
1. Answers to the following questions (should go at the end of your file)

## Reflection

1. Which models did you use? Describe them (in words—you don't need to give me equations with βs).
1. Create a plot (or multiple plots) of your models' MSEs (in the validation set) and their performances in the competition.
1. Compare your best-performing model from the previous project your best-performing in this project. Does it look like you overfit last time?
1. Were the rankings of your models in the validation set similar to their relative rankings in your Kaggle submission? **Explain** why this outcome is to be expected or why it is suprising.
1. How different were the your models in terms of performance? What about in terms of flexibility?
1. Do you have any evidence in your tested models of overfitting? How do you know?
1. Did you do anything to trade off between variance and bias in your models?
1. Why do we typically prefer cross validation (*k*-fold or LOOCV) to the validation-set approach?
1. Is it possible to create a flexible model using linear regression? Explain. 