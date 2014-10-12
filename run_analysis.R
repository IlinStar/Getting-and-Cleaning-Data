#Set working directory
setwd("C:/Users/home/Documents/Coursera/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset")
#getwd() 

#read X_train.txt into training variable
training = read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
#training

training[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
training[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

#read X_test.txt into testing variable
testing = read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
#testing

testing[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
testing[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

#read activity_labels.txt into activityLabels variable
activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
#activityLabels

# Read features and make more appropriate names 
features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

# Merge training and test sets together
allData = rbind(training, testing)
#allData

# Get only the data on mean and std. dev.
ourcols <- grep(".*Mean.*|.*Std.*", features[,2])
#ourcols

# Get only columns we want from features table 
features <- features[ourcols,]
#features

# Add the last two columns (subject and activity)
ourcols <- c(ourcols, 562, 563)
#colsWeWant

# Remove the unwanted columns from allData
allData <- allData[,ourcols]
#allData

# Add the column names (features) to allData
colnames(allData) <- c(features$V2, "Activity", "Subject")
colnames(allData) <- tolower(colnames(allData))

currentActivity = 1
for (currentActivityLabel in activityLabels$V2) {
    allData$activity <- gsub(currentActivity, currentActivityLabel, allData$activity)
    currentActivity <- currentActivity + 1
}

allData$activity <- as.factor(allData$activity)
#allData$activity

allData$subject <- as.factor(allData$subject)
#allData$subject

tidy = aggregate(allData, by=list(activity = allData$activity, subject=allData$subject), mean)
#tidy

# Remove the subject and activity column - no mean for them
tidy[,90] = NULL
tidy[,89] = NULL

#Write all info into tidy text file
write.table(tidy, "tidy.txt", sep="\t")

