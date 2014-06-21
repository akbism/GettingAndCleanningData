#1. Read subject from test and train dataset and merge to create a single subject dataset.
#2. Set the column name of the subject data set "subject".
#3. Read features and activity labels.
#4. Read features data values- test and train dataset- captured for subjects. Merge the test and train datasets.
#5. Set the column name of the features value dataset (of step 4.) using features.
#6. Read the activities for each line item- test and train datasets. Merge the test and train datasets.
#7. Set the column name of the activity dataset as "activity"
#8. Filter columns such that only mean() and std() columns are chosen.
#9. Replace the activity codes with activity labels for all observations
#10. Calculate mean against subject and activity combination
#11. Finally, the script creates a tidy data set with the average of each measurement for each activity and each subject. 
#    The result is saved as X_final_tidied.txt, a 180x68 data frame. 
#    The first column contains subject IDs, the second column contains activity and then the averages for each of the 66 attributes are in columns 3 to 68. 
#    There are 30 subjects and 6 activities, totally180 rows in this data set with averages.

# Read test and train files and merge to create a total dataset. 
  subject_test<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/test/subject_test.txt")
  subject_train<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/train/subject_train.txt")
  subject_total<-rbind(subject_test,subject_train)
  
  X_test<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/test/X_test.txt")
  X_train<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/train/X_train.txt")
  X_total<-merge(X_test,X_train, all.x=TRUE, all.y=TRUE)

  Y_test<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/test/Y_test.txt")
  Y_train<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/train/Y_train.txt")
  Y_total=rbind(Y_test,Y_train)
 
# Read and assign appropriate variable name for each observation  
  colnames(subject_total)="subject"
  colnames(Y_total)<-"activity"
  features<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/features.txt")
  features<-features[,-1]
  colnames(X_total)<-features

# Read activity labels
  activity_labels<-read.table("C:/Amar/4 R/Getting and Cleaning Data/UCI HAR Dataset/activity_labels.txt")
  activity_labels<-activity_labels[,-1]

# Filter the required columns from the available columns of the dataset with features values.
  t<-grepl("mean\\()|std\\()",colnames(X_total))
  X_total1<-X_total[,t]
  
# Combine subject, activity and features value dataset
  X_final<-cbind(subject_total,Y_total,X_total1)  

# Replace activity codes with the labels
  X_final[X_final$activity==1,2]="WALKING"
  X_final[X_final$activity==2,2]="WALKING_UPSTAIRS"
  X_final[X_final$activity==3,2]="WALKING_DOWNSTAIRS"
  X_final[X_final$activity==4,2]="SITTING"
  X_final[X_final$activity==5,2]="STANDING"
  X_final[X_final$activity==6,2]="LAYING"

# Calculate mean values for each selected features against the combination of subject and acitivity
  X_final_tidied<-aggregate(x=X_final[,3:68], by = X_final[,1:2], FUN = "mean")
  
# Write the output to Output.txt file.
  write.table(X_final_tidied, "C:/Amar/4 R/Getting and Cleaning Data/project/Output.txt")
