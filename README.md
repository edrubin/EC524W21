
# EC 524, Winter 2021

Welcome to Economics 524 (424): Prediction and machine-learning in econometrics, taught by [Ed Rubin](https://edrub.in) and [Stephen Reed](https://economics.uoregon.edu/profile/sreed2/).

## Schedule

**Lecture** Tuesday and Thursday, 2:15pm–3:45pm, [Zoom](https://canvas.uoregon.edu/courses/174618/external_tools/1449) and/or [MCK 204A](https://map.uoregon.edu/7e11b9d41)

**Lab** Friday, 12:30pm–1:30pm [Zoom](https://canvas.uoregon.edu/courses/174618/external_tools/1449)

**Office hours**

- **Ed Rubin** ([Zoom](https://canvas.uoregon.edu/courses/174618/external_tools/1449)): TBD
- **Stephen Reed** ([Zoom](https://canvas.uoregon.edu/courses/174618/external_tools/1449)): TBD

## Syllabus

[**Syllabus**](https://raw.githack.com/edrubin/EC524W21/master/syllabus/syllabus.pdf)

## Books

### Required books

- [Introduction to Statistical Learning](https://www-bcf.usc.edu/~gareth/ISL/)
- [The Hundred-Page Machine Learning Book](http://themlbook.com/)
- [Data Visualization](https://socviz.co/)

### Suggested books

- [R for Data Science](https://r4ds.had.co.nz/)
- [Introduction to Data Science](https://www.springer.com/us/book/9783319500164) (not available without purchase)
- [The Elements of Statistical Learning](http://web.stanford.edu/~hastie/ElemStatLearn/)

## Lecture notes

[**000 - Overview (Why predict?)**](https://raw.githack.com/edrubin/EC524W21/master/lecture/000/000-slides.html)

1. Why do we have a class on prediction?
2. How is prediction (and how are its tools) different from causal inference?
3. Motivating examples

**Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/000/000-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/000/000-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/000/000-slides.Rmd)

[**001 - Statistical learning foundations**](https://raw.githack.com/edrubin/EC524W21/master/lecture/001/001-slides.html)

1. Why do we have a class on prediction?
2. How is prediction (and how are its tools) different from causal inference?
3. Motivating examples

**Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/001/001-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/001/001-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/001/001-slides.Rmd)

[**002 - Model accuracy**](https://raw.githack.com/edrubin/EC524W21/master/lecture/002/002-slides.html)

1. Model accuracy
1. Loss for regression and classification
1. The variance bias-tradeoff
1. The Bayes classifier
1. KNN

**Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/002/002-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/002/002-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/002/002-slides.Rmd)

[**003 - Resampling methods**](https://raw.githack.com/edrubin/EC524W21/master/lecture/003/003-slides.html)

1. Review
1. The validation-set approach
1. Leave-out-out cross validation
1. k-fold cross validation
1. The bootstrap

**Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/003/003-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/003/003-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/003/003-slides.Rmd)

[**004 - Linear regression strikes back**](https://raw.githack.com/edrubin/EC524W21/master/lecture/004/004-slides.html)

1. Returning to linear regression
1. Model performance and overfit
1. Model selection—best subset and stepwise
1. Selection criteria

**Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/004/004-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/004/004-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/004/004-slides.Rmd)

**Bonus:** [An introduction to preprocessing with `tidymodels`](https://www.kaggle.com/edwardarubin/intro-tidymodels-preprocessing). (Kaggle notebook)

**005 - Shrinkage methods**
<!-- [**005 - Shrinkage methods**](https://raw.githack.com/edrubin/EC524W21/master/lecture/005/005-slides.html) -->

1. Ridge regression
1. Lasso
1. Elasticnet

<!-- **Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/005/005-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/005/005-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/005/005-slides.Rmd) -->

**006 - Classification intro**
<!-- [**006 - Classification intro**](https://raw.githack.com/edrubin/EC524W21/master/lecture/006/006-slides.html) -->

1. Introduction to classification
1. Why not regression?
1. But also: Logistic regression
1. Assessment: Confusion matrix, assessment criteria, ROC, and AUC

<!-- **Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/006/006-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/006/006-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/006/006-slides.Rmd) -->

**007 - Decision trees**
<!-- [**007 - Decision trees**](https://raw.githack.com/edrubin/EC524W21/master/lecture/007/007-slides.html) -->

1. Introduction to trees
1. Regression trees
1. Classification trees—including the Gini index, entropy, and error rate

<!-- **Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/007/007-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/007/007-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/007/007-slides.Rmd) -->

**008 - Ensemble methods**
<!-- [**008 - Ensemble methods**](https://raw.githack.com/edrubin/EC524W21/master/lecture/008/008-slides.html) -->

1. Introduction
1. Bagging
1. Random forests
1. Boosting

<!-- **Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/008/008-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/008/008-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/008/008-slides.Rmd) -->

**009 - Support vector machines**
<!-- [**009 - Support vector machines**](https://raw.githack.com/edrubin/EC524W21/master/lecture/009/009-slides.html) -->

1. Hyperplanes and classification
2. The maximal margin hyperplane/classifier
3. The support vector classifier
4. Support vector machines

<!-- **Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lecture/009/009-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lecture/009/009-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lecture/009/009-slides.Rmd) -->

## Projects

**000** [Predicting sales price in housing data (Kaggle)](https://github.com/edrubin/EC524W21/tree/master/projects/project-000)

**Help:** 

- [A simple example/walkthrough](https://www.kaggle.com/edwardarubin/project-000-example)
- [Kaggle notebooks](https://rpubs.com/Clennon/KagNotes) (from Connor Lennon)

**001** [Validation and out-of-sample performance](https://github.com/edrubin/EC524W21/tree/master/projects/project-001)

**002**

**003**

**004**

**005**

**Class project**

## Lab notes

[**000 - Workflow and cleaning**](https://raw.githack.com/edrubin/EC524W21/master/lab/000-cleaning/000-slides.html)

1. General "best practices" for coding
2. Working with RStudio
3. The pipe (`%>%`)
4. [Cleaning and Kaggle follow up](https://www.kaggle.com/edwardarubin/project-000-followup)

**Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lab/000-cleaning/000-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lab/000-cleaning/000-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lab/000-cleaning/000-slides.Rmd)

[**001 - Data cleaning: Multiple mutations**](https://raw.githack.com/edrubin/EC524W21/master/lab/001-cleaning/001-slides.html)

1. Finish [previous lab on `dplyr`](https://raw.githack.com/edrubin/EC524W21/master/lab/000-cleaning/000-slides.html#48)
2. [Extending `dplyr` and `mutate`](https://raw.githack.com/edrubin/EC524W21/master/lab/001-cleaning/001-slides.html)

**Formats** [.html](https://raw.githack.com/edrubin/EC524W21/master/lab/001-cleaning/001-slides.html) | [.pdf](https://raw.githack.com/edrubin/EC524W21/master/lab/001-cleaning/001-slides.pdf) | [.Rmd](https://raw.githack.com/edrubin/EC524W21/master/lab/001-cleaning/001-slides.Rmd)

[**002 - Validation**](https://www.kaggle.com/stephenreed/ec524-lecture-003?scriptVersionId=52430728)

1. Creating a training and validation data set from your observations dataframe in R
2. Writing a function to iterate over multiple models to test and compare MSEs

## Additional resources

### R

- [RStudio's recommendations for learning R](https://education.rstudio.com/learn/), plus cheatsheets, books, and tutorials
- [YaRrr! The Pirate’s Guide to R](https://bookdown.org/ndphillips/YaRrr/) (free online)
- [UO library resources/workshops](http://uoregon.libcal.com/calendar/dataservices/?cid=11979&t=g&d=0000-00-00&cal=11979,11173)
- [Eugene R Users](https://www.meetup.com/meetup-group-cwPiAlnB/)

### Data Science

- Workflow diagram: [.pdf](https://raw.githack.com/edrubin/EC524W21/master/resources/data-workflow.pdf) | [.png](https://raw.githack.com/edrubin/EC524W21/master/resources/data-workflow.pdf) | [.ai](https://raw.githack.com/edrubin/EC524W21/master/resources/data-workflow.ai)
- [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/) by Jake VanderPlas
- [Elements of AI](https://course.elementsofai.com/)
- [Caltech professor Yaser Abu-Mostafa: Lectures about machine learning on YouTube](https://www.youtube.com/user/caltech/search?query=Yaser+Abu-Mostafa)
- From Google:
  - [Machine-learning crash course](https://developers.google.com/machine-learning/crash-course/ml-intro)
  - [Google Cloud training for data and machine learning](https://cloud.google.com/training/data-ml)
  - [General Google education platform](https://ai.google/education/)

### Spatial data

- [Geocomputation with R](https://geocompr.robinlovelace.net) (free online)
- [Spatial Data Science](https://keen-swartz-3146c4.netlify.com) (free online)
- [Applied Spatial Data Analysis with R](https://asdar-book.org)
