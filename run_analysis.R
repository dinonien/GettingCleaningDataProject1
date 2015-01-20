########################################################################
## Coursera : Getting and Cleaning Data
## Programming Assignment 1:  Getting and Cleaning Data Course Project
## Author: Dino N.
########################################################################

#This script requires dplyr package, so it checks and installs if neccessary
if(!("dplyr" %in% rownames(installed.packages()))) {
  install.packages("dplyr")
}

#Load Package dplyr
library("dplyr")

# Assumes you have a Project Folder "GettingCleaningDataProject1" in your R Workspace
# and the raw data files in a subdirectory /Data/test/* respectively /Data/train/*

# Import Raw Data from Test Folder and rename to avoid duplicate column names
rawTestSubject <- read.table("./GettingCleaningDataProject1/Data/test/subject_test.txt")
rawTestSubject <- rename(rawTestSubject,Subject=V1)
rawTestY <- read.table("./GettingCleaningDataProject1/Data/test/y_test.txt")
rawTestY <- rename(rawTestY,Activity=V1)
rawTextX <- read.table("./GettingCleaningDataProject1/Data/test/X_test.txt")
# Import Raw Data from Train Folder
rawTrainSubject <- read.table("./GettingCleaningDataProject1/Data/train/subject_train.txt")
rawTrainSubject <- rename(rawTrainSubject,Subject=V1)
rawTrainY <- read.table("./GettingCleaningDataProject1/Data/train/y_train.txt")
rawTrainY <- rename(rawTrainY,Activity=V1)
rawTrainX <- read.table("./GettingCleaningDataProject1/Data/train/X_train.txt")
# Create Tidy Data Set which is combination of Test and Training Set
# Column Order is: Subject Number / X Value / Y Values
activity <- rbind(cbind(rawTestSubject,rawTestY,rawTextX),(cbind(rawTrainSubject,rawTrainY,rawTrainX)))

# Remove all columns except for Subject, Activity and all means and all std
activity <- select(activity,c(Subject,Activity,V1:V6,V41:V46,V81:V86,V121:V126,V161:V166,V201:V202,
              V214:V215,V227:V228,V240:V241,V253:V254,V266:V271,V294:V296,V345:V350,V373:V375,V424:V429,V452:V454,
                V503:V504,V513,V516:V517,V529:V530,V542:V543))

# Descriptive Names for the Activity Attribute
# According to Mapping Schema: 1=WALKING, 2=WALKING_UPSTAIRS, 3=WALKING_DOWNSTAIRS, 4=SITTING, 5=STANDING, 6=LAYING
activity$Activity <- factor(activity$Activity,c(1:6),c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

# Descriptive Names for the Columns
# According to Codebook

