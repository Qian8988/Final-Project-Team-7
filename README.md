# Final-Project-Team-7

## Using machine learning to predict wine quality

### Deliverable 1

Topic: Predicting wine ratings for red and white wines.

Source Data 1: https://www.kaggle.com/uciml/red-wine-quality-cortez-et-al-2009

Source Data 2: https://www.kaggle.com/piyushagni5/white-wine-quality

Question we hope to answer: Which classifier predicted wine ratings the best for red and white wines?

Database Engine: PostGres

List of Tables and Columns: Red Wine Quality, White Wine Quality

- 1 - fixed acidity

- 2 - volatile acidity

- 3 - citric acid

- 4 - residual sugar

- 5 - chlorides

- 6 - free sulfur dioxide

- 7 - total sulfur dioxide

- 8 - density

- 9 - pH

- 10 - sulphates

- 11 - alcohol

- Output variable (based on sensory data):

- 12 - quality (score between 0 and 10)

Model: Classifier - Convert the quality score to "good" or "bad" (no live predictions)


### Deliverable 2


- Preliminary data pre-processing began with checking the dataset for any null values or missing data.  We then recoded our dataset for wines with a quality score greater than or equal to 7; this creates a binary outcome that we can use for our various machine learning models.  The "id" and "color" columns were removed because these values did not affect the outcome rating.
- The features used in this model include the following:
1 - fixed acidity,
2 - volatile acidity,
3 - citric acid,
4 - residual sugar,
5 - chlorides,
6 - free sulfur dioxide,
7 - total sulfur dioxide,
8 - density,
9 - pH,
10 - sulphates,
11 - alcohol,
12 - quality (score between 1 = "Good" and 0= "Not Good")
- Before we split the data for training/testing, we first scaled the data using the StandardScaler (Mean=0, SD=1).  This created the X_scaled dataset which was converted into X_train, X_test, y_train, and y_test.  
- The model choices we used in this analysis include the following:

**Logistic:** _Benefits_ - Simple to implement and effective; it works with feature scaling but does not require it.  _Limitations_ - Poor performance on non-linear data or where features are not highly correlated.

**SVM:** _Benefits_ - Does better at handling a higher number of features.  Useful when classes can be easily separated.  Outliers have less impact.  _Limitations_ - For larger datasets, it requires a large amount of time to process.  In the case of overlapped classes it does nt perform well.

**Decision Tree:** _Benefits_ - Scaling or normalization of data is not required.  Can handle missing values.  _Limitations_ Prone to overfitting.  Higher time required to train decision trees.

**Random Forest:** _Benefits_ - Less prone to overfitting.  _Limitations_ - Features need to have some predictive power or else they wont work.

**Gradient Boosted Tree:** _Benefits_ - _Limitations_ - 

**Logisitic-Random Oversampling:** _Benefits_ - _Limitations_ -

**Logistic-SMOTE:** _Benefits_ - _Limitations_ -

**Logistic-Cluster centroid Under Sampling:** _Benefits_ - _Limitations_ -

**Balanced Random Forest Classifier:** _Benefits_ - _Limitations_ -

**Easy Ensemble AdaBoos Classifier:** _Benefits_ - _Limitations_ -

- Dashboard Blueprint: Dashboard includes distribution of scores for both red and white wines.  Also includes ability to interactively switch between red and white wines as well as switching between each of the features for red and white wines respectively. The results (accuracy, precision, recall and F1 score) of all the models will have interactive filters to look at red/white wine. 
