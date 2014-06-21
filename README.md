## GETTING AND CLEANING DATA COURSE PROJECT
## Read Me: file run_analysis.R
===========================================
Amar Kumar, Coursera
===========================================
Download data from the UCI Machine Learning Repository:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
This excercise has been carried out with the data provided to us for the fulfillment of the course Getting and Cleaning Data.

### Introduction
The original data has been collected with the help of human activity recognition using Smartphones. The complete information regarding the experiment has been provided in the README.txt file in the downloaded folder using above link. We need a script to make the original data ready for data analysis by using tidying techniques learnt in the R Programming 
courses. Tidy datasets are easy to manipulate, model and visualise, and have a specific structure : variables are stored in 
columns, observations in rows, and a single type of experimental unit per dataset. Each column of the tidy dataset should 
have a column name.
To make the data concise, one can keep only average value of variables for the combination of key parameters. 
Details about each variable has been explained in the file codeBook.md.

### Steps
* Read test and train files and merge to create a total dataset. 
  * X_test.txt (data file for test dataset).
  * y_test.txt (activity file for test dataset).
  * subject_test.txt (subject file for test dataset). 
  * X_train.txt (data file for training dataset).
  * y_train.txt (activity file for training dataset).
  * subject_train.txt (subject file for training dataset).
  * Read and assign appropriate variable name for each observation
  
* Read and assign appropriate variable name for each observation 
  * features.txt (index and names variables for the datasets).
  * Assign subject and activity column names as "subject" and "activity" respectively.
* Read activity labels
  * activity_labels.txt (data file for activity labels)
* Filter the required columns from the available columns of the dataset with features values.
* Combine subject, activity and features value dataset
* Replace activity codes with the labels
* Calculate mean values for each selected features against the combination of subject and acitivity
* Write the output to Output.txt file.

###### Hence,  the script provides a tidy data set (180x68 data frame) with the average of each measurement for each activity and each subject. The first column contains subject IDs, the second column contains activity and then the averages for each of the 66 attributes are in columns 3 to 68. There are 30 subjects and 6 activities, totally180 rows in this data set with averages.
