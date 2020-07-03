# Getting-and-Cleaning-Data-Course-Project
## Introduction
Based on information collected from the website [Link to study](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) it was retrieved information related to an experiment carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Files
In the repository where this README is stored, you can find the following files:
- `UCI HAR Dataset` the original dataset used to perform the analysis
- `run_analysis.R` contains the script developed in R with the purpose of tidying the dataset and answering the given questions
- `dataset1.txt` where you can find the tidy dataset requested for question 4 of the project
- `dataset2.txt` where you can find the tidy dataset requested for question 5 of the project
- `codebook.md` which describes the different variables obtained by the analysis of the UCI HAR Dataset

## How script works?
1. Load the required packages for the code to work
2. Create the working directory in case it does not exist
3. Download the zip File from the provided link
4. Unzip the downloaded file
5. Load `train` dataset
6. Load column names for the `X_train` dataset
7. Select only the columns that contain the `mean()` or `std()` calculations
8. Merge `subject_train`, `y_train` and `x_train` datasets
9. Load `test` data set and repeat steps 6 to 8 for the just loaded data
10. Merge `test` and `train` into one dataset
11. Sort `FinalDF` in ascending order of subject and then of activity
12. Add descriptive activity names to name the activities in the data set
13. Label the data set with descriptive variable names
14. Create a second, independent tidy data set with the average of each variable for each activity and each subject
15. Print both data sets
