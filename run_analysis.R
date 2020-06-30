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
colNamesX_train<-read.table("./data/UCI HAR Dataset/features.txt")
colNamesX_train<-select(colNamesX_train,V2)
colnames(x_trainDS)<-colNamesX_train$V2

#Select only the columns that contain mean() or std()

