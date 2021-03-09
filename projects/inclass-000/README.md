# In-class project 001

Today you get to teach a machine how to read. 

Specifically, you will try to teach a machine-learning algorithm to classify hand-written integers (`0` through `9`). Each hand-written number has been scanned into a 28-pixel by 28-pixel image. Each of these pixels has been added as a feature (explanatory variable) that takes on a value between 0 (white) and 255 (black). Thus each observation has 1 label (the outcome, an integer between `0` and `9`) and 28 times 28 = 784 features.

This dataset is famous and goes by the name "MNIST" ("Modified National Institute of Standards and Technology"). After today, you'll have taken your first step into the amazing world of "machine vision."

You can learn more about the dataset on the [Kaggle competition page](https://www.kaggle.com/c/digit-recognizer/overview) or [this awesome blog post](https://colah.github.io/posts/2014-10-Visualizing-MNIST/).

I wrote [some code that puts together a pretty basic random forest](https://rpubs.com/edrubin/predicting-digits) and achieves an accuracy of 96.425% on Kaggle's out-of-sample test dataset. 

**Your job:** Beat me.

You can use any method that you would like—boosted trees, SVMs, logistic regression, KNN. If you need inspiration, check [out all of the notebooks on Kaggle](https://www.kaggle.com/c/digit-recognizer/code) or [just Google](https://www.google.com).

You *can* use all of the features (I did), but many people have found success with [dimensionality-reduction techniques](https://juliasilge.com/blog/cocktail-recipes-umap/).