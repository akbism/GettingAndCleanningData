# 1 Read test and train files and merge to create a total dataset. 
# 2 Read and assign appropriate variable name for each observation  
# 3 Read activity labels
# 4 Filter the required columns from the available columns of the dataset with features values.
# 5 Combine subject, activity and features value dataset
# 6 Replace activity codes with the labels
# 7 Calculate mean values for each selected features against the combination of subject and acitivity
# 8 Write the output to Output.txt file- a tidy data set (180x68 data frame) with the average of each measurement for each activity and each subject. 
# The first column contains subject IDs, the second column contains activity and then the averages for each of the 66 attributes are in columns 3 to 68. 
# There are 30 subjects and 6 activities, totally180 rows in this data set with averages.

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
