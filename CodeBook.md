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

| Subject        | Activity           | Features 1:n (containing mean,mean frequency and standard deviation values  |
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
fBodyGyroMeanFreqX = V452,fBodyGyroMeanFreqY = V453,fBodyGyroMeanFreqZ = V454,fBodyAccMagMean = V503,fBodyAccMagStd = V504,fBodyAccMagMeanFreq = V513,fBodyAccJerkMagMean = V516,fBodyAccJerkMagStd = V517,fBodyAccJerkMagMeanFreq = V526,fBodyGyroMagMean = V529,fBodyGyroMagStd = V530,fBodyGyroMagMeanFreq = V539,fBodyGyroJerkMagMean = V542,fBodyGyroJerkMagStd = V543,fBodyGyroJerkMagmeanFreq = V552

**Column Description**

| Column        | Description   |Data Type  |
| ------------- |:-------------:|:-------------:|
| Subject    | Is the subject number|Numeric|
| Activity    | Is the Activity Name|Character|
tBodyAccMeanX |Body acceleration signals (time domain) - Mean Value - Axis:X  |Numeric|
tBodyAccMeanY |Body acceleration signals (time domain) - Mean Value - Axis:Y |Numeric|
tBodyAccMeanZ |Body acceleration signals (time domain) - Mean Value - Axis:Z |Numeric|
tBodyAccStdX |Body acceleration signals (time domain) - Standard deviation Value - Axis:X |Numeric|
tBodyAccStdY |Body acceleration signals (time domain) - Standard deviation Value - Axis:Y |Numeric|
tBodyAccStdZ |Body acceleration signals (time domain) - Standard deviation Value - Axis:Z |Numeric|
tGravityAccMeanX |Gravity acceleration signals (time domain) - Mean Value - Axis:X |Numeric|
tGravityAccMeanY |Gravity acceleration signals (time domain) - Mean Value - Axis:Y |Numeric|
tGravityAccMeanZ |Gravity acceleration signals (time domain) - Mean Value - Axis:Z |Numeric|
tGravityAccStdX | Gravity acceleration signals (time domain) - Standard deviation Value - Axis:X |Numeric|
tGravityAccStdY | Gravity acceleration signals (time domain) - Standard deviation Value - Axis:Y|Numeric|
tGravityAccStdZ | Gravity acceleration signals (time domain) - Standard deviation Value - Axis:Z|Numeric|
tBodyAccJerkMeanX |Jerk signals for Body Linear Acceleration (time domain) - Mean Value - Axis:X |Numeric|
tBodyAccJerkMeanY |Jerk signals for Body Linear Acceleration (time domain) - Mean Value - Axis:Y |Numeric|
tBodyAccJerkMeanZ |Jerk signals for Body Linear Acceleration (time domain) - Mean Value - Axis:Z |Numeric|
tBodyAccJerkStdX |Jerk signals for Body Linear Acceleration (time domain) - Standard deviation Value - Axis:X |Numeric|
tBodyAccJerkStdY |Jerk signals for Body Linear Acceleration (time domain) - Standard deviation Value - Axis:Y |Numeric|
tBodyAccJerkStdZ |Jerk signals for Body Linear Acceleration (time domain) - Standard deviation Value - Axis:Z |Numeric|
tBodyGyroMeanX |Body gyroscope signals (time domain) - Mean Value - Axis:X  |Numeric|
tBodyGyroMeanY |Body gyroscope signals (time domain) - Mean Value - Axis:Y |Numeric|
tBodyGyroMeanZ |Body gyroscope signals (time domain) - Mean Value - Axis:Z |Numeric|
tBodyGyroStdX | Body gyroscope signals (time domain) - Standard Value - Axis:X|Numeric|
tBodyGyroStdY |Body gyroscope signals (time domain) - Standard Value - Axis:Y |Numeric|
tBodyGyroStdZ |Body gyroscope signals (time domain) - Standard Value - Axis:Z |Numeric|
tBodyGyroJerkMeanX |Jerk signals for Angular Velocity (time domain) - Mean Value - Axis:X  |Numeric|
tBodyGyroJerkMeanY |Jerk signals for Angular Velocity (time domain) - Mean Value - Axis:Y |Numeric|
tBodyGyroJerkMeanZ |Jerk signals for Angular Velocity (time domain) - Mean Value - Axis:Z |Numeric|
tBodyGyroJerkStdX |Jerk signals for Angular Velocity (time domain) - Standard deviation Value - Axis:X|Numeric|
tBodyGyroJerkStdY |Jerk signals for Angular Velocity (time domain) - Standard deviation Value - Axis:Y |Numeric|
tBodyGyroJerkStdZ |Jerk signals for Angular Velocity (time domain) - Standard deviation Value - Axis:Z |Numeric|
tBodyAccMagMean |Magnitude (calculated by Euclidian norm) of Body acceleration signals (time domain) - Mean Value |Numeric|
tBodyAccMagStd |Magnitude (calculated by Euclidian norm) of Body acceleration signals (time domain) - Standard deviation Value |Numeric|
tGravityAccMagMean |Magnitude (calculated by Euclidian norm) of Gravity acceleration signals (time domain) - Mean Value  |Numeric|
tGravityAccMagStd |Magnitude (calculated by Euclidian norm) of Gravity acceleration signals (time domain) - Standard deviation Value   |Numeric|
tBodyAccJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (time domain) - Mean Value   |Numeric|
tBodyAccJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (time domain) - Standard Value |Numeric|
tBodyGyroMagMean |Magnitude (calculated by Euclidian norm) of Body gyroscope  (time domain) - Mean Value |Numeric|
tBodyGyroMagStd |Magnitude (calculated by Euclidian norm) of Body gyroscope  (time domain) - Standard deviation Value |Numeric|
tBodyGyroJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (time domain) - Mean Value |Numeric|
tBodyGyroJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (time domain) - Standard deviation Value |Numeric|
fBodyAccMeanX |Body acceleration signals (frequency domain) - Mean Value - Axis:X  |Numeric|
fBodyAccMeanY |Body acceleration signals (frequency domain) - Mean Value - Axis:Y |Numeric|
fBodyAccMeanZ |Body acceleration signals (frequency domain) - Mean Value - Axis:Z |Numeric|
fBodyAccStdX |Body acceleration signals (frequency domain) - Standard deviation Value - Axis:X |Numeric|
fBodyAccStdY |Body acceleration signals (frequency domain) - Standard deviation Value - Axis:Y |Numeric|
fBodyAccStdZ |Body acceleration signals (frequency domain) - Standard deviation Value - Axis:Z |Numeric|
fBodyAccMeanFreqX |Body acceleration signals (frequency domain) - Mean frequency Value - Axis:X |Numeric|
fBodyAccMeanFreqY |Body acceleration signals (frequency domain) - Mean frequency Value - Axis:Y |Numeric|
fBodyAccMeanFreqZ |Body acceleration signals (frequency domain) - Mean frequency Value - Axis:Z |Numeric|
fBodyAccJerkMeanX |Jerk signals for Body Linear Acceleration (frequency domain) - Mean Value - Axis:X |Numeric|
fBodyAccJerkMeanY |Jerk signals for Body Linear Acceleration (frequency domain) - Mean Value - Axis:Y |Numeric|
fBodyAccJerkMeanZ |Jerk signals for Body Linear Acceleration (frequency domain) - Mean Value - Axis:Z |Numeric|
fBodyAccJerkStdX |Jerk signals for Body Linear Acceleration (frequency domain) - Standard deviation Value - Axis:X |Numeric|
fBodyAccJerkStdY |Jerk signals for Body Linear Acceleration (frequency domain) - Standard deviation Value - Axis:Y |Numeric|
fBodyAccJerkStdZ |Jerk signals for Body Linear Acceleration (frequency domain) - Standard deviation Value - Axis:Z |Numeric|
fBodyAccJerkMeanFreqX |Jerk signals for Body Linear Acceleration (frequency domain) - Mean frequency Value - Axis:X |Numeric|
fBodyAccJerkMeanFreqY |Jerk signals for Body Linear Acceleration (frequency domain) - Mean frequency Value - Axis:Y |Numeric|
fBodyAccJerkMeanFreqZ |Jerk signals for Body Linear Acceleration (frequency domain) - Mean frequency Value - Axis:Z |Numeric|
fBodyGyroMeanX |Body gyroscope signals (frequency domain) - Mean Value - Axis:X |Numeric|
fBodyGyroMeanY |Body gyroscope signals (frequency domain) - Mean Value - Axis:Y |Numeric|
fBodyGyroMeanZ |Body gyroscope signals (frequency domain) - Mean Value - Axis:Z |Numeric|
fBodyGyroStdX |Body gyroscope signals (frequency domain) - Standard deviation Value - Axis:X |Numeric|
fBodyGyroStdY |Body gyroscope signals (frequency domain) - Standard deviation Value - Axis:Y |Numeric|
fBodyGyroStdZ |Body gyroscope signals (frequency domain) - Standard deviation Value - Axis:Z |Numeric|
fBodyGyroMeanFreqX |Body gyroscope signals (frequency domain) - Mean frequency Value - Axis:X |Numeric|
fBodyGyroMeanFreqY |Body gyroscope signals (frequency domain) - Mean frequency Value - Axis:Y |Numeric|
fBodyGyroMeanFreqZ |Body gyroscope signals (frequency domain) - Mean frequency Value - Axis:Z |Numeric|
fBodyAccMagMean |Magnitude (calculated by Euclidian norm) of Body acceleration signals (frequency domain) - Mean Value |Numeric|
fBodyAccMagStd |Magnitude (calculated by Euclidian norm) of Body acceleration signals (frequency domain) - Standard deviation Value |Numeric|
fBodyAccMagMeanFreq |Magnitude (calculated by Euclidian norm) of Body acceleration signals (frequency domain) - Mean frequency  Value |Numeric|
fBodyAccJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (frequency domain) - Mean Value |Numeric|
fBodyAccJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (frequency domain) - Standard deviation Value |Numeric|
fBodyAccJerkMagMeanFreq |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (frequency domain) - Mean frequency Value |Numeric|
fBodyGyroMagMean |Magnitude (calculated by Euclidian norm) of Body gyroscope  (frequency domain) - Mean Value |Numeric|
fBodyGyroMagStd |Magnitude (calculated by Euclidian norm) of Body gyroscope  (frequency domain) - Standard deviation Value |Numeric|
fBodyGyroMagMeanFreq |Magnitude (calculated by Euclidian norm) of Body gyroscope  (frequency domain) - Mean frequency Value |Numeric|
fBodyGyroJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (frequency domain) - Mean Value  |Numeric|
fBodyGyroJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (frequency domain) - Standard deviation Value  |Numeric|
fBodyGyroJerkMagmeanFreq |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (frequency domain) - Mean frequency Value  |Numeric|

##  Codebook for Dataset activityMean

From the tidy dataset called "activity" a dataset activityMean is created which is in the following form:

| Subject        | Activity           | Features 1:n (containing mean,mean frequency and standard deviation values  |
| ------------- |:-------------:| -----:|

Each rows contains one row per subject and activity - the values of the features are averaged across the observation per subject and activity.

**Transformations done**

Group by Subject and Activity created and observation averaged (mean) across these groups.

**Column Description**

| Column        | Description   |Data Type  |
| ------------- |:-------------:|:-------------:|
| Subject    | Is the subject number|Numeric|
| Activity    | Is the Activity Name|Character|
tBodyAccMeanX |Body acceleration signals (time domain) - Mean Value - Axis:X  |Numeric|
tBodyAccMeanY |Body acceleration signals (time domain) - Mean Value - Axis:Y |Numeric|
tBodyAccMeanZ |Body acceleration signals (time domain) - Mean Value - Axis:Z |Numeric|
tBodyAccStdX |Body acceleration signals (time domain) - Standard deviation Value - Axis:X |Numeric|
tBodyAccStdY |Body acceleration signals (time domain) - Standard deviation Value - Axis:Y |Numeric|
tBodyAccStdZ |Body acceleration signals (time domain) - Standard deviation Value - Axis:Z |Numeric|
tGravityAccMeanX |Gravity acceleration signals (time domain) - Mean Value - Axis:X |Numeric|
tGravityAccMeanY |Gravity acceleration signals (time domain) - Mean Value - Axis:Y |Numeric|
tGravityAccMeanZ |Gravity acceleration signals (time domain) - Mean Value - Axis:Z |Numeric|
tGravityAccStdX | Gravity acceleration signals (time domain) - Standard deviation Value - Axis:X |Numeric|
tGravityAccStdY | Gravity acceleration signals (time domain) - Standard deviation Value - Axis:Y|Numeric|
tGravityAccStdZ | Gravity acceleration signals (time domain) - Standard deviation Value - Axis:Z|Numeric|
tBodyAccJerkMeanX |Jerk signals for Body Linear Acceleration (time domain) - Mean Value - Axis:X |Numeric|
tBodyAccJerkMeanY |Jerk signals for Body Linear Acceleration (time domain) - Mean Value - Axis:Y |Numeric|
tBodyAccJerkMeanZ |Jerk signals for Body Linear Acceleration (time domain) - Mean Value - Axis:Z |Numeric|
tBodyAccJerkStdX |Jerk signals for Body Linear Acceleration (time domain) - Standard deviation Value - Axis:X |Numeric|
tBodyAccJerkStdY |Jerk signals for Body Linear Acceleration (time domain) - Standard deviation Value - Axis:Y |Numeric|
tBodyAccJerkStdZ |Jerk signals for Body Linear Acceleration (time domain) - Standard deviation Value - Axis:Z |Numeric|
tBodyGyroMeanX |Body gyroscope signals (time domain) - Mean Value - Axis:X  |Numeric|
tBodyGyroMeanY |Body gyroscope signals (time domain) - Mean Value - Axis:Y |Numeric|
tBodyGyroMeanZ |Body gyroscope signals (time domain) - Mean Value - Axis:Z |Numeric|
tBodyGyroStdX | Body gyroscope signals (time domain) - Standard Value - Axis:X|Numeric|
tBodyGyroStdY |Body gyroscope signals (time domain) - Standard Value - Axis:Y |Numeric|
tBodyGyroStdZ |Body gyroscope signals (time domain) - Standard Value - Axis:Z |Numeric|
tBodyGyroJerkMeanX |Jerk signals for Angular Velocity (time domain) - Mean Value - Axis:X  |Numeric|
tBodyGyroJerkMeanY |Jerk signals for Angular Velocity (time domain) - Mean Value - Axis:Y |Numeric|
tBodyGyroJerkMeanZ |Jerk signals for Angular Velocity (time domain) - Mean Value - Axis:Z |Numeric|
tBodyGyroJerkStdX |Jerk signals for Angular Velocity (time domain) - Standard deviation Value - Axis:X|Numeric|
tBodyGyroJerkStdY |Jerk signals for Angular Velocity (time domain) - Standard deviation Value - Axis:Y |Numeric|
tBodyGyroJerkStdZ |Jerk signals for Angular Velocity (time domain) - Standard deviation Value - Axis:Z |Numeric|
tBodyAccMagMean |Magnitude (calculated by Euclidian norm) of Body acceleration signals (time domain) - Mean Value |Numeric|
tBodyAccMagStd |Magnitude (calculated by Euclidian norm) of Body acceleration signals (time domain) - Standard deviation Value |Numeric|
tGravityAccMagMean |Magnitude (calculated by Euclidian norm) of Gravity acceleration signals (time domain) - Mean Value  |Numeric|
tGravityAccMagStd |Magnitude (calculated by Euclidian norm) of Gravity acceleration signals (time domain) - Standard deviation Value   |Numeric|
tBodyAccJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (time domain) - Mean Value   |Numeric|
tBodyAccJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (time domain) - Standard Value |Numeric|
tBodyGyroMagMean |Magnitude (calculated by Euclidian norm) of Body gyroscope  (time domain) - Mean Value |Numeric|
tBodyGyroMagStd |Magnitude (calculated by Euclidian norm) of Body gyroscope  (time domain) - Standard deviation Value |Numeric|
tBodyGyroJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (time domain) - Mean Value |Numeric|
tBodyGyroJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (time domain) - Standard deviation Value |Numeric|
fBodyAccMeanX |Body acceleration signals (frequency domain) - Mean Value - Axis:X  |Numeric|
fBodyAccMeanY |Body acceleration signals (frequency domain) - Mean Value - Axis:Y |Numeric|
fBodyAccMeanZ |Body acceleration signals (frequency domain) - Mean Value - Axis:Z |Numeric|
fBodyAccStdX |Body acceleration signals (frequency domain) - Standard deviation Value - Axis:X |Numeric|
fBodyAccStdY |Body acceleration signals (frequency domain) - Standard deviation Value - Axis:Y |Numeric|
fBodyAccStdZ |Body acceleration signals (frequency domain) - Standard deviation Value - Axis:Z |Numeric|
fBodyAccMeanFreqX |Body acceleration signals (frequency domain) - Mean frequency Value - Axis:X |Numeric|
fBodyAccMeanFreqY |Body acceleration signals (frequency domain) - Mean frequency Value - Axis:Y |Numeric|
fBodyAccMeanFreqZ |Body acceleration signals (frequency domain) - Mean frequency Value - Axis:Z |Numeric|
fBodyAccJerkMeanX |Jerk signals for Body Linear Acceleration (frequency domain) - Mean Value - Axis:X |Numeric|
fBodyAccJerkMeanY |Jerk signals for Body Linear Acceleration (frequency domain) - Mean Value - Axis:Y |Numeric|
fBodyAccJerkMeanZ |Jerk signals for Body Linear Acceleration (frequency domain) - Mean Value - Axis:Z |Numeric|
fBodyAccJerkStdX |Jerk signals for Body Linear Acceleration (frequency domain) - Standard deviation Value - Axis:X |Numeric|
fBodyAccJerkStdY |Jerk signals for Body Linear Acceleration (frequency domain) - Standard deviation Value - Axis:Y |Numeric|
fBodyAccJerkStdZ |Jerk signals for Body Linear Acceleration (frequency domain) - Standard deviation Value - Axis:Z |Numeric|
fBodyAccJerkMeanFreqX |Jerk signals for Body Linear Acceleration (frequency domain) - Mean frequency Value - Axis:X |Numeric|
fBodyAccJerkMeanFreqY |Jerk signals for Body Linear Acceleration (frequency domain) - Mean frequency Value - Axis:Y |Numeric|
fBodyAccJerkMeanFreqZ |Jerk signals for Body Linear Acceleration (frequency domain) - Mean frequency Value - Axis:Z |Numeric|
fBodyGyroMeanX |Body gyroscope signals (frequency domain) - Mean Value - Axis:X |Numeric|
fBodyGyroMeanY |Body gyroscope signals (frequency domain) - Mean Value - Axis:Y |Numeric|
fBodyGyroMeanZ |Body gyroscope signals (frequency domain) - Mean Value - Axis:Z |Numeric|
fBodyGyroStdX |Body gyroscope signals (frequency domain) - Standard deviation Value - Axis:X |Numeric|
fBodyGyroStdY |Body gyroscope signals (frequency domain) - Standard deviation Value - Axis:Y |Numeric|
fBodyGyroStdZ |Body gyroscope signals (frequency domain) - Standard deviation Value - Axis:Z |Numeric|
fBodyGyroMeanFreqX |Body gyroscope signals (frequency domain) - Mean frequency Value - Axis:X |Numeric|
fBodyGyroMeanFreqY |Body gyroscope signals (frequency domain) - Mean frequency Value - Axis:Y |Numeric|
fBodyGyroMeanFreqZ |Body gyroscope signals (frequency domain) - Mean frequency Value - Axis:Z |Numeric|
fBodyAccMagMean |Magnitude (calculated by Euclidian norm) of Body acceleration signals (frequency domain) - Mean Value |Numeric|
fBodyAccMagStd |Magnitude (calculated by Euclidian norm) of Body acceleration signals (frequency domain) - Standard deviation Value |Numeric|
fBodyAccMagMeanFreq |Magnitude (calculated by Euclidian norm) of Body acceleration signals (frequency domain) - Mean frequency  Value |Numeric|
fBodyAccJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (frequency domain) - Mean Value |Numeric|
fBodyAccJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (frequency domain) - Standard deviation Value |Numeric|
fBodyAccJerkMagMeanFreq |Magnitude (calculated by Euclidian norm) of Jerk signals for Body Linear Acceleration  (frequency domain) - Mean frequency Value |Numeric|
fBodyGyroMagMean |Magnitude (calculated by Euclidian norm) of Body gyroscope  (frequency domain) - Mean Value |Numeric|
fBodyGyroMagStd |Magnitude (calculated by Euclidian norm) of Body gyroscope  (frequency domain) - Standard deviation Value |Numeric|
fBodyGyroMagMeanFreq |Magnitude (calculated by Euclidian norm) of Body gyroscope  (frequency domain) - Mean frequency Value |Numeric|
fBodyGyroJerkMagMean |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (frequency domain) - Mean Value  |Numeric|
fBodyGyroJerkMagStd |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (frequency domain) - Standard deviation Value  |Numeric|
fBodyGyroJerkMagmeanFreq |Magnitude (calculated by Euclidian norm) of Jerk signals for Angular Velocity  (frequency domain) - Mean frequency Value  |Numeric|

