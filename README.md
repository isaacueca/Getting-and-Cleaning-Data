Getting and Cleaning Data Coursera Project
===================================

The objective of this project is to clean and format the Human Activity Recognition Using Smartphones Dataset. 

The original data can be obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



How it works
=======================================

Fistly, all data sources were loaded into R. 

Secondly, more friendly names were given tot the columns of the data sources.

The next step was to create a filter dataset that contained only mean and standard deviation data from the original data sets. After that, a new data frame was created by merging the test and training data sets together. The filter dataset was then applied to the newly created data frame, so only the columns that contained mean and standard deviations were included in the new data set.

Then, friendly labels were given to each of the activities that were performed by the partipants in the data set. 

Lastly, a tidy data frame was created using the aggretate function with the average of each variable for each activity and each subject. 


Running the Project
===================================

Bellow are the steps to run the project in your computer

- Download the "run_analysis.R" file  
- Set the working directory in R Studio (setwd("directory where you downloaded the files"))
- Run the file   