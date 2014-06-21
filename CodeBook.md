==================================================
#  CodeBook for run_analysis.R
## Getting and Cleaning Data Course Project
==================================================
## Amar Kumar, Coursera
==================================================
### A. Data Source:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
### B. Variables used
The run_analysis.R code tries to create a dataset, which contains columns with the following variables.
* subject		Codes of the volunteers [1-30]
* activity	
	 * Laying
	 * Walkingdownstairs
	 * walkingupstairs
	 * sitting
	 * walking
	 * standing
* tBodyAcc-mean()-X	[-1,1]		
* tBodyAcc-mean()-Y	[-1,1]
* tBodyAcc-mean()-Z	[-1,1]
	* Normalized mean value of time domain body signals from the accelerometer in X/Y/Z direction used to estimate variables of the feature vector for each pattern  
* tBodyAcc-std()-X	[-1,1]
* tBodyAcc-std()-Y	[-1,1]
* tBodyAcc-std()-Z	[-1,1]
	* Normalized standard deviation value of time domain body signals from the accelerometer in X/Y/Z direction used to estimate variables of the feature vector for each pattern  
* tGravityAcc-mean()-X	[-1,1]
* tGravityAcc-mean()-Y	[-1,1]
* tGravityAcc-mean()-Z	[-1,1]
	* Normalized mean value of time domain gravity signals in X/Y/Z direction used to estimate variables of the feature vector for each pattern 
* tGravityAcc-std()-X	[-1,1]
* tGravityAcc-std()-Y	[-1,1]
* tGravityAcc-std()-Z	[-1,1]
	* Normalized standard deviation value of time domain gravity signals in X/Y/Z direction used to estimate variables of the feature vector for each pattern 
* tBodyAccJerk-mean()-X	[-1,1]
* tBodyAccJerk-mean()-Y	[-1,1]
* tBodyAccJerk-mean()-Z	[-1,1]
	* Normalized mean value of time domain body linear jerk signals from the accelerometer in X/Y/Z direction used to estimate variables of the feature vector for each pattern
* tBodyAccJerk-std()-X	[-1,1]
* tBodyAccJerk-std()-Y	[-1,1]
* tBodyAccJerk-std()-Z	[-1,1]
	* Normalized standard deviation value of time domain body linear jerk signals from the accelerometer in X/Y/Z direction used to estimate variables of the feature vector for each pattern
* tBodyGyro-mean()-X	[-1,1]
* tBodyGyro-mean()-Y	[-1,1]
* tBodyGyro-mean()-Z	[-1,1]
	* Normalized mean value of time domain body signals from the gyroscope in X/Y/Z direction used to estimate variables of the feature vector for each pattern
* tBodyGyro-std()-X	[-1,1]
* tBodyGyro-std()-Y	[-1,1]
* tBodyGyro-std()-Z	[-1,1]
	* Normalized standard deviation value of time domain body signals from the gyroscope in X/Y/Z direction used to estimate variables of the feature vector for each pattern
* tBodyGyroJerk-mean()-X	[-1,1]
* tBodyGyroJerk-mean()-Y	[-1,1]
* tBodyGyroJerk-mean()-Z	[-1,1]
	* Normalized mean value of time domain body angular jerk signals from the gyroscope in X/Y/Z direction used to estimate variables of the feature vector for each pattern
* tBodyGyroJerk-std()-X	[-1,1]
* tBodyGyroJerk-std()-Y	[-1,1]
* tBodyGyroJerk-std()-Z	[-1,1]
	* Normalized standard deviation value of time domain body angular jerk signals from the gyroscope in X/Y/Z direction used to estimate variables of the feature vector for each pattern
* tBodyAccMag-mean()	[-1,1]
	* Normalized mean value of magnitude of three dimentional body signals from accelerometer calculated using Euclidean norm 
* tBodyAccMag-std()	[-1,1]
	* Normalized standard deviation value of magnitude of three dimentional body signals from accelerometer  calculated using Euclidean norm
* tGravityAccMag-mean()	[-1,1]
	* Normalized mean value of magnitude of three dimentional gravity signals from accelerometer  calculated using Euclidean norm 
* tGravityAccMag-std()	[-1,1]
	* Normalized standard deviation value of magnitude of three dimentional gravity signals from accelerometer calculated using Euclidean norm
* tBodyAccJerkMag-mean()	[-1,1]
	* Normalized mean value of magnitude of three dimentional body linerar signals from accelerometer calculated using Euclidean norm 
* tBodyAccJerkMag-std()	[-1,1]
	* Normalized standard deviation value of magnitude of three dimentional body linear signals from accelerometer calculated using Euclidean norm
* tBodyGyroMag-mean()	[-1,1]
	* Normalized mean value of magnitude of three dimentional body signals from gyroscope calculated using Euclidean norm 
* tBodyGyroMag-std()	[-1,1]
	* Normalized standard deviation value of magnitude of three dimentional body signals from gyroscope calculated using Euclidean norm
* tBodyGyroJerkMag-mean()	[-1,1]
	* Normalized mean value of magnitude of three dimentional body signals from gyroscope and accelerometer calculated using Euclidean norm 
* tBodyGyroJerkMag-std()	[-1,1]
	* Normalized standard deviation value of magnitude of three dimentional body signals from gyroscope and accelerometer calculated using Euclidean norm 
* fBodyAcc-mean()-X	[-1,1]
* fBodyAcc-mean()-Y	[-1,1]
* fBodyAcc-mean()-Z	[-1,1]
	* Normalized mean value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyAcc-mean()-X/Y/Z
* fBodyAcc-std()-X	[-1,1]
* fBodyAcc-std()-Y	[-1,1]
* fBodyAcc-std()-Z	[-1,1]
	* Normalized standard deviation value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyAcc-mean()-X/Y/Z
* fBodyAccJerk-mean()-X	[-1,1]
* fBodyAccJerk-mean()-Y	[-1,1]
* fBodyAccJerk-mean()-Z	[-1,1]
	* Normalized mean value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to * * * tBodyAccJerk-mean()-X/Y/Z
* fBodyAccJerk-std()-X	[-1,1]
* fBodyAccJerk-std()-Y	[-1,1]
* fBodyAccJerk-std()-Z	[-1,1]
	* Normalized standard deviation value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyAccJerk-mean()-X/Y/Z
* fBodyGyro-mean()-X	[-1,1]
* fBodyGyro-mean()-Y	[-1,1]
* fBodyGyro-mean()-Z	[-1,1]
	* Normalized mean value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to * * tBodyGyro-mean()-X/Y/Z
* fBodyGyro-std()-X	[-1,1]
* fBodyGyro-std()-Y	[-1,1]
* fBodyGyro-std()-Z	[-1,1]
	* Normalized standard deviation value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyGyro-std()-X/Y/Z
* fBodyAccMag-mean()	[-1,1]
	* Normalized mean value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to * * tBodyAccMag-mean()
* fBodyAccMag-std()	[-1,1]
	* Normalized standard deviation value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()	[-1,1]
	* Normalized mean value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to * * tBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()	[-1,1]
	* Normalized standard deviation value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()		[-1,1]
	* Normalized mean value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to * * tBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()		[-1,1]
	* Normalized standard deviation value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()	[-1,1]	
	* Normalized mean value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()	[-1,1]
	* Normalized standard deviation value of frequency domain signals calculated from applying Fast Fourier Transform (FFT) to tBodyBodyGyroJerkMag-std()

### C. Steps to form the dataset
* 1. Read subject from test and train dataset and merge to create a single subject dataset.
* 2. Set the column name of the subject data set "subject".
* 3. Read features and activity labels.
* 4. Read features data values- test and train dataset- captured for subjects. Merge the test and train datasets.
* 5. Set the column name of the features value dataset (of step 4.) using features.
* 6. Read the activities for each line item- test and train datasets. Merge the test and train datasets.
* 7. Set the column name of the activity dataset as "activity"
* 8. Filter columns such that only mean() and std()  columns are chosen. 
* 9. Replace the activity codes with activity labels for all observations
* 10. Calculate mean against subject and activity combination
* 11. Finally, the script creates a tidy data set with the average of each measurement for each activity and each subject. The result is saved as X_final_tidied.txt, a 180x68 data frame. The first column contains subject IDs, the second column contains activity and then the averages for each of the 66 attributes are in columns 3 to 68. There are 30 subjects and 6 activities, totally180 rows in this data set with averages.
 


