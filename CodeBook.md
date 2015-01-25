Study Design 
===================================

The objective of this project is to clean and format the Human Activity Recognition Using Smartphones Dataset. 


Data Sources
===================================

The original data sources can be obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


How it works
=======================================

Fistly, all data sources were loaded into R. 

Secondly, more friendly names were given tot the columns of the data sources.

The next step was to create a filter dataset that contained only mean and standard deviation data from the original data sets. After that, a new data frame was created by merging the test and training data sets together. The filter dataset was then applied to the newly created data frame, so only the columns that contained mean and standard deviations were included in the new data set.

Then, friendly labels were given to each of the activities that were performed by the partipants in the data set. 

Lastly, a tidy data frame was created using the aggretate function with the average of each variable for each activity and each subject. 


Data Dictionary
===================================

Bellow are the meanings of custom column names that were introduced by this project:

- activity - the activity description (1-6)
- subject - the participant number (1-30) 
