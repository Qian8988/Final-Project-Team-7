# Final-Project-Team-7

## Using machine learning to predict wine quality

### Deliverable 1

Topic: Predicting wine ratings for red and white wines.

Source Data 1: https://www.kaggle.com/uciml/red-wine-quality-cortez-et-al-2009

Source Data 2: https://www.kaggle.com/piyushagni5/white-wine-quality

Question we hope to answer: Which classifier predicted wine ratings the best?

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

<<<<<<< HEAD
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
- Before we split the data for training/testing, we first scaled the data using the StandardScaler.  This created the X_scaled dataset which was converted into X_train, X_test, y_train, and y_test.  
- Tho model choices we used in this analysis include the following:
1	Logisitic,
2	SVM,
3	Decision Tree,
4	Random Forest,
5	Gradient Boosted Tree,
6	Logisitic-ROS,
7	Logistic-SMOTE,
8	Logistic-Cluster centroid US,
9	Balanced Random Forest Classifier,
10	Easy Ensemble AdaBoos Classifier

- Dashboard Blueprint: Dashboard includes distribution of scores for both red and white wines.  Also includes ability to interactively switch between red and white wines as well as switching between each of the features for red and white wines respectively.  
=======
Dashboard: Tableau - Interactive display of model results
>>>>>>> 2eeb33a7887d8f7fa924e463cf6ccb8bc52a8248
