# GettingCleaningDataProject1
Assignment of Coursera Project for Getting and Cleaning Data

##Source Data
The original data is available from here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Description
In this project the raw data files which were collected when doing activites (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying) and using a smartphone accelerometer respectively gyrometer to sense these activities are processed in order to create a tidy data set.

Tidy means that

1) Instead of three files each one for  subject, Output Value (X) and Input Value (Y) there is one file which is based on the merged three files.


2) Test and Training Data are merged

3) Insted of using numeric values for the activities - descriptive values are used, e.g 1 = "Walking"

4) Column for input values (Y) are made descriptive

5) Another data set is created which shows for each subject, activity the mean of the Y values.

#Files

run_analysis.R: Contains the R Source code to reproduce the data process described in the last section.

codebook.md: Contains a code book which describes the variables, the data, and any transformations

/data/tidyDataMean.txt : Contains the data set of Action 5) as described in the last section

/data/README.txt : Contains the original read me data file.

/data/activity_labels.txt : Contains a mapping for activities

/data/features.txt : Contains a mapping for features = Input Values (Y)

/data/features_info.txt : Contains information about features = Input Values (Y)

/data/train/* : Contains raw data files for training the algorithm

/data/test/* : Contains raw data files for testing the algorithm

#run_analysis.R Description

1.  Package dplyr is installed respectively loaded
2.  Text files are loaded into dataframes and column renamed in order to avoid duplicate file names
3.  activity dataframe is created by row bind test / training data frames and column bind (subject, features and output variables)
4.  activity dataframe only mean and standard deviation columns are kept
5.  activity column is factorized and descriptive values are introduced
6.  activity dataframe descriptive variable names for features are introduced
7.  activityMean dataframe is created which is a dataframe grouped by subject and activity and contains mean of every feature variable
8.  activityMean is written to file tidyDataMean.txt


#run_analysis.R Usage

source(run_analysis.R)

Note: Make sure files are in data directory und subdirectory exists
