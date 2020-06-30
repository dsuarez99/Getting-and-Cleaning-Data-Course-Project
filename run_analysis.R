#Load required packages
library(dplyr)

#Create the working directory in case it doesnt exists
if(file.exists("./data")==FALSE){
  dir.create("./data")
}
setwd("C:/Users/suare/Desktop/Getting-and-Cleaning-Data-Course-Project")
#Download the zip File
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile = "./data/projectData.zip")

#Unzipping the file
unzip("./data/projectData.zip",exdir = "./data")

#Load train data set
x_trainDS<-read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_trainDS<-read.table("./data/UCI HAR Dataset/train/Y_train.txt")
subject_train<-read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#Load column names for the X_train dataset
colNamesX<-read.table("./data/UCI HAR Dataset/features.txt")
colNamesX<-select(colNamesX,V2)
colnames(x_trainDS)<-colNamesX$V2

#Select only the columns that contain mean() or std()
x_train<-select(x_trainDS,grep("std\\(\\)|mean\\(\\)",colNamesX$V2,value = TRUE))

#Merge subject_train, y_trainDS and x_train
train<-cbind(subject_train,y_trainDS,x_train)
colnames(train)[1]<-"subject"
colnames(train)[2]<-"activity"

#Load test data set
x_testDS<-read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_testDS<-read.table("./data/UCI HAR Dataset/test/Y_test.txt")
subject_test<-read.table("./data/UCI HAR Dataset/test/subject_test.txt")

#Load column names for the X_test dataset
colnames(x_testDS)<-colNamesX$V2

#Get columns with variable names that include mean() or std()
x_test<-select(x_testDS,grep("mean\\(\\)|std\\(\\)",colNamesX$V2,value = TRUE))

#Merge subject_test, y_testDS and x_test
test<-cbind(subject_test,y_testDS,x_test)
colnames(test)[1]<-"subject"
colnames(test)[2]<-"activity"

#Merge test and train into one dataset
finalDF<-rbind(test,train)

#Sort Final DF in ascending order of subject and then of activity
finalDF<-arrange(finalDF,subject,activity)

#Uses descriptive activity names to name the activities in the data set
finalDF$activity<-sub(1,"WALKING",finalDF$activity)
finalDF$activity<-sub(2,"WALKING_UPSTAIRS",finalDF$activity)
finalDF$activity<-sub(3,"WALKING_DOWNSTAIRS",finalDF$activity)
finalDF$activity<-sub(4,"SITTING",finalDF$activity)
finalDF$activity<-sub(5,"STANDING",finalDF$activity)
finalDF$activity<-sub(6,"LAYING",finalDF$activity)

#Appropriately labels the data set with descriptive variable names.
colnames(finalDF)<-sub("^t","time",colnames(finalDF))
colnames(finalDF)<-sub("^f","frequency",colnames(finalDF))
colnames(finalDF)<-sub("\\(\\)","",colnames(finalDF))
colnames(finalDF)<-gsub("-","_",colnames(finalDF))
colnames(finalDF)<-sub("Acc","Accelerometer",colnames(finalDF))
colnames(finalDF)<-sub("Gyro","Gyroscope",colnames(finalDF))
colnames(finalDF)<-sub("BodyBody","Body",colnames(finalDF))
colnames(finalDF)<-sub("Mag","Magnitude",colnames(finalDF))

#Create a second, independent tidy data set with the average of each variable for each activity and each subject.
analysisDF<-group_by(finalDF,subject,activity)
hola<-summarise_at(analysisDF,-(1:2),mean)

#Print both data sets
write.table(finalDF,row.names = FALSE,sep = ",",file = "dataSet1.txt")
write.table(analysisDF,row.names = FALSE,sep = ",",file = "dataSet2.txt")
