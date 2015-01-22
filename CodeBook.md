# Codebook for GettingCleaningDataProject1
Assignment of Coursera Project for Getting and Cleaning Data

## Original Files / Raw Data
### Codebook for Original files are available through the links provided:
These are the Mapping / Feature description for the orginal raw files.

[Activity Label Value Mapping](https://github.com/dinonien/GettingCleaningDataProject1/blob/master/Data/activity_labels.txt)

[Feature Column Mapping](https://github.com/dinonien/GettingCleaningDataProject1/blob/master/Data/features.txt)

[Feature Description](https://github.com/dinonien/GettingCleaningDataProject1/blob/master/Data/features_info.txt)

Raw Data Files are:
subject_test.txt respectively subject_train.txt -> File with subject (study participant) number per observation

X_test.txt respectively X_train.txt -> File with activity number per observation

y_train.txt respectively y_train.txt -> File with features per observation (there are 561 different features)

##  Codebook for Dataset activity

From the raw files a tidy dataset called "activity" is created which is in the following form:

| Subject        | Activity           | Features 1:n (containing mean and standard deviation values  |
| ------------- |:-------------:| -----:|

Each rows contains one observation.

**Transformations done**

1.  Row Binding of (Column binding the files subject_test.txt +  X_test.txt + y_test.txt) and (Column binding the files subject_train.txt +  X_train.txt + y_train.txt)

2.  Rename 1st and 2nd column to Subject and Activity

3.  Remove all columns except: Subject,Activity,V1:V6,V41:V46,V81:V86,V121:V126,V161:V166,V201:V202,
V214:V215,V227:V228,V240:V241,V253:V254,V266:V271,V294:V296,V345:V350,V373:V375,V424:V429,V452:V454,
V503:V504,V513,V516:V517,V526,V529:V530,V539,V542:V543,V552

4.  Rename Activity Variable variables according to [Activity Label Value Mapping](https://github.com/dinonien/GettingCleaningDataProject1/blob/master/Data/activity_labels.txt)

5.  Rename the column headers of the features:  tBodyAccMeanX = V1,tBodyAccMeanY = V2,tBodyAccMeanZ = V3,tBodyAccStdX = V4,tBodyAccStdY = V5,tBodyAccStdZ = V6,tGravityAccMeanX = V41,tGravityAccMeanY = V42,tGravityAccMeanZ = V43,tGravityAccStdX = V44,tGravityAccStdY = V45,tGravityAccStdZ = V46,tBodyAccJerkMeanX = V81,tBodyAccJerkMeanY = V82,tBodyAccJerkMeanZ = V83,tBodyAccJerkStdX = V84,tBodyAccJerkStdY = V85,tBodyAccJerkStdZ = V86,
tBodyGyroMeanX = V121,tBodyGyroMeanY = V122,tBodyGyroMeanZ = V123,tBodyGyroStdX = V124,tBodyGyroStdY = V125,tBodyGyroStdZ = V126,tBodyGyroJerkMeanX = V161,tBodyGyroJerkMeanY = V162,tBodyGyroJerkMeanZ = V163,tBodyGyroJerkStdX = V164,tBodyGyroJerkStdY = V165,tBodyGyroJerkStdZ = V166,tBodyAccMagMean = V201,tBodyAccMagStd = V202,tGravityAccMagMean = V214,tGravityAccMagStd = V215,tBodyAccJerkMagMean = V227,tBodyAccJerkMagStd = V228,
tBodyGyroMagMean = V240,tBodyGyroMagStd = V241,tBodyGyroJerkMagMean = V253,tBodyGyroJerkMagStd = V254,fBodyAccMeanX = V266,fBodyAccMeanY = V267,fBodyAccMeanZ = V268,fBodyAccStdX = V269,fBodyAccStdY = V270,fBodyAccStdZ = V271,
fBodyAccMeanFreqX = V294,fBodyAccMeanFreqY = V295,fBodyAccMeanFreqZ = V296,fBodyAccJerkMeanX = V345,fBodyAccJerkMeanY = V346,fBodyAccJerkMeanZ = V347,fBodyAccJerkStdX = V348,fBodyAccJerkStdY = V349,fBodyAccJerkStdZ = V350,
fBodyAccJerkMeanFreqX = V373,fBodyAccJerkMeanFreqY = V374,fBodyAccJerkMeanFreqZ = V375,fBodyGyroMeanX = V424,fBodyGyroMeanY = V425,fBodyGyroMeanZ = V426,fBodyGyroStdX = V427,fBodyGyroStdY = V428,fBodyGyroStdZ = V429,
fBodyGyroMeanFreqX = V452,fBodyGyroMeanFreqY = V453,fBodyGyroMeanFreqZ = V454,fBodyAccMagMean = V503,fBodyAccMagStd = V504,fBodyAccMagMeanFreq = V513,fBodyBodyAccJerkMagMean = V516,fBodyBodyAccJerkMagStd = V517,fBodyBodyAccJerkMagMeanFreq = V526,fBodyBodyGyroMagMean = V529,fBodyBodyGyroMagStd = V530,fBodyBodyGyroMagMeanFreq = V539,fBodyBodyGyroJerkMagMean = V542,fBodyBodyGyroJerkMagStd = V543,fBodyBodyGyroJerkMagmeanFreq = V552

**Column Description**

| Column        | Description   |Data Type  |
| ------------- |:-------------:|:-------------:|
| Subject    | Is the subject number|Numeric|
| Activity    | Is the Activity Name|Character|
tBodyAccMeanX |Body acceleration signals (time domain) - Mean Value - Axis: X  |Numeric|
tBodyAccMeanY |Body acceleration signals (time domain) - Mean Value - Axis: Y |Numeric|
tBodyAccMeanZ |Body acceleration signals (time domain) - Mean Value - Axis: Z |Numeric|
tBodyAccStdX |Body acceleration signals (time domain) - Standard deviation Value - Axis: X |Numeric|
tBodyAccStdY |Body acceleration signals (time domain) - Standard deviation Value - Axis: Y |Numeric|
tBodyAccStdZ |Body acceleration signals (time domain) - Standard deviation Value - Axis: Z |Numeric|
tGravityAccMeanX |Gravity acceleration signals (time domain) - Mean Value - Axis:X |Numeric|
tGravityAccMeanY |Gravity acceleration signals (time domain) - Mean Value - Axis:Y |Numeric|
tGravityAccMeanZ |Gravity acceleration signals (time domain) - Mean Value - Axis:Z |Numeric|
tGravityAccStdX | Gravity acceleration signals (time domain) - Standard deviation Value - Axis: X |Numeric|
tGravityAccStdY | Gravity acceleration signals (time domain) - Standard deviation Value - Axis: Y|Numeric|
tGravityAccStdZ | Gravity acceleration signals (time domain) - Standard deviation Value - Axis: Z|Numeric|
tBodyAccJerkMeanX | |Numeric|
tBodyAccJerkMeanY | |Numeric|
tBodyAccJerkMeanZ | |Numeric|
tBodyAccJerkStdX | |Numeric|
tBodyAccJerkStdY | |Numeric|
tBodyAccJerkStdZ | |Numeric|
tBodyGyroMeanX | |Numeric|
tBodyGyroMeanY | |Numeric|
tBodyGyroMeanZ | |Numeric|
tBodyGyroStdX | |Numeric|
tBodyGyroStdY | |Numeric|
tBodyGyroStdZ | |Numeric|
tBodyGyroJerkMeanX | |Numeric|
tBodyGyroJerkMeanY | |Numeric|
tBodyGyroJerkMeanZ | |Numeric|
tBodyGyroJerkStdX | |Numeric|
tBodyGyroJerkStdY | |Numeric|
tBodyGyroJerkStdZ | |Numeric|
tBodyAccMagMean | |Numeric|
tBodyAccMagStd | |Numeric|
tGravityAccMagMean | |Numeric|
tGravityAccMagStd | |Numeric|
tBodyAccJerkMagMean | |Numeric|
tBodyAccJerkMagStd | |Numeric|
tBodyGyroMagMean | |Numeric|
tBodyGyroMagStd | |Numeric|
tBodyGyroJerkMagMean | |Numeric|
tBodyGyroJerkMagStd | |Numeric|
fBodyAccMeanX | |Numeric|
fBodyAccMeanY | |Numeric|
fBodyAccMeanZ | |Numeric|
fBodyAccStdX | |Numeric|
fBodyAccStdY | |Numeric|
fBodyAccStdZ | |Numeric|
fBodyAccMeanFreqX | |Numeric|
fBodyAccMeanFreqY | |Numeric|
fBodyAccMeanFreqZ | |Numeric|
fBodyAccJerkMeanX | |Numeric|
fBodyAccJerkMeanY | |Numeric|
fBodyAccJerkMeanZ | |Numeric|
fBodyAccJerkStdX | |Numeric|
fBodyAccJerkStdY | |Numeric|
fBodyAccJerkStdZ | |Numeric|
fBodyAccJerkMeanFreqX | |Numeric|
fBodyAccJerkMeanFreqY | |Numeric|
fBodyAccJerkMeanFreqZ | |Numeric|
fBodyGyroMeanX | |Numeric|
fBodyGyroMeanY | |Numeric|
fBodyGyroMeanZ | |Numeric|
fBodyGyroStdX | |Numeric|
fBodyGyroStdY | |Numeric|
fBodyGyroStdZ | |Numeric|
fBodyGyroMeanFreqX | |Numeric|
fBodyGyroMeanFreqY | |Numeric|
fBodyGyroMeanFreqZ | |Numeric|
fBodyAccMagMean | |Numeric|
fBodyAccMagStd | |Numeric|
fBodyAccMagMeanFreq | |Numeric|
fBodyBodyAccJerkMagMean | |Numeric|
fBodyBodyAccJerkMagStd | |Numeric|
fBodyBodyAccJerkMagMeanFreq | |Numeric|
fBodyBodyGyroMagMean | |Numeric|
fBodyBodyGyroMagStd | |Numeric|
fBodyBodyGyroMagMeanFreq | |Numeric|
fBodyBodyGyroJerkMagMean | |Numeric|
fBodyBodyGyroJerkMagStd | |Numeric|
fBodyBodyGyroJerkMagmeanFreq | |Numeric|



