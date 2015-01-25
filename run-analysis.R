library(plyr)

# Read in the data for test set
testingData <- read.table("./UCI HAR Dataset/test/X_test.txt")
testActivity <- read.table("./UCI HAR Dataset/test/Y_test.txt")
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read in the data for training set
trainingData <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainingActivity <- read.table("./UCI HAR Dataset/train/Y_train.txt")
trainingSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read in the data for activity labels and features
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

# Merge the training and the test sets
mergedDataSet <- rbind(testingData, trainingData)

# Appropriately labels the data set with descriptive variable names. 
mergedActivity <- rbind(testingActivity, trainingActivity)
setnames(mergedLabels, "V1", "activityID")

mergedSubject <- rbind(testSubject, trainingSubject)
setnames(mergedSubject, "V1", "subject")



# Merge columns

mergedSubject <- cbind(mergedSubject, mergedActivity)
mergedDataSet <- cbind(mergedSubject, mergedDataSet)

setkey(mergedDataSet, subject, activityID)

# Extracts only the measurements on the mean and standard deviation for each measurement. 


# Uses descriptive activity names to name the activities in the data set


# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
