##  Getting and Cleaning Data
### Coursera - Getting and Cleaning Data Course Project

### Introduction
This repository was created for the course project named above

### Raw data
Data source used for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zipAbout the script and the tidy dataset

### Tasks for the project: 
Create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set. 
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set 
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Script and the tidy dataset
Script name is run_analysis.R which will merge the test and training sets together.
The UCI HAR Dataset must be extracted and be availble in a directory called "UCI HAR Dataset" After merging testing and training, labels are added and only columns that have to do with mean and standard deviation are kept. Script creates a tidy data set containing the means of all the columns per test subject and per activity. This tidy dataset is written to the file called tidy.txt, which can also be found in this repository.

### Code Book
The CodeBook.md file explains the transformations performed and the resulting data and variables.

