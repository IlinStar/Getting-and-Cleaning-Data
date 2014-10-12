## CodeBook for the tidy dataset

### Data source
Data for the project located in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip which obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Feature Selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These signals were captured at a constant rate of 50 Hz. Then they were filtered using a median and low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
The acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

The magnitude of three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

Selection of features I made is because the assignment requested to extract only the measurements on the mean and standard deviation for each measurement. Therefore all variables related to mean or standard deviation were included. 

For the derived dataset, these signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
The set of variables that were estimated (and kept for this assignment) from these signals are:

mean(): Mean value
std(): Standard deviation
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
Other estimates have been removed for the purpose of this excercise.

Features were normalized and bounded within [-1,1].

The resulting variable names are of the following form: tbodyaccmeanx, which means the mean value of tBodyAcc-XYZ.
