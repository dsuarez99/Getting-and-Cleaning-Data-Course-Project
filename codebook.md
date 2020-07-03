# Codebook
## Data introduction
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Identifiers
In order to identify the volunteer and the activity it was performing, you can observe the first two columns of the dataset, here is an explanation of each of these:
- `subject` id of the participant to whom the measurements were calculated
- `activity` activity the subject was performing when the calculations were measured
   - WALKING
   - WALKING_UPSTAIRS
   - WALKING_DOWNSTAIRS
   - SITTING
   - STANDING
   - LAYING


## Variables measured
The measured variables that are presented on the tidy dataset `dataSet1.txt` are: 
- timeBodyAccelerometer_mean_X
- timeBodyAccelerometer_mean_Y
- timeBodyAccelerometer_mean_Z
- timeBodyAccelerometer_std_X
- timeBodyAccelerometer_std_Y
- timeBodyAccelerometer_std_Z
- timeGravityAccelerometer_mean_X
- timeGravityAccelerometer_mean_Y
- timeGravityAccelerometer_mean_Z
- timeGravityAccelerometer_std_X
- timeGravityAccelerometer_std_Y
- timeGravityAccelerometer_std_Z
- timeBodyAccelerometerJerk_mean_X
- timeBodyAccelerometerJerk_mean_Y
- timeBodyAccelerometerJerk_mean_Z
- timeBodyAccelerometerJerk_std_X
- timeBodyAccelerometerJerk_std_Y
- timeBodyAccelerometerJerk_std_Z
- timeBodyGyroscope_mean_X
- timeBodyGyroscope_mean_Y
- timeBodyGyroscope_mean_Z
- timeBodyGyroscope_std_X
- timeBodyGyroscope_std_Y
- timeBodyGyroscope_std_Z
- timeBodyGyroscopeJerk_mean_X
- timeBodyGyroscopeJerk_mean_Y
- timeBodyGyroscopeJerk_mean_Z
- timeBodyGyroscopeJerk_std_X
- timeBodyGyroscopeJerk_std_Y
- timeBodyGyroscopeJerk_std_Z
- timeBodyAccelerometerMagnitude_mean
- timeBodyAccelerometerMagnitude_std
- timeGravityAccelerometerMagnitude_mean
- timeGravityAccelerometerMagnitude_std
- timeBodyAccelerometerJerkMagnitude_mean
- timeBodyAccelerometerJerkMagnitude_std
- timeBodyGyroscopeMagnitude_mean
- timeBodyGyroscopeMagnitude_std
- timeBodyGyroscopeJerkMagnitude_mean
- timeBodyGyroscopeJerkMagnitude_std
- frequencyBodyAccelerometer_mean_X
- frequencyBodyAccelerometer_mean_Y
- frequencyBodyAccelerometer_mean_Z
- frequencyBodyAccelerometer_std_X
- frequencyBodyAccelerometer_std_Y
- frequencyBodyAccelerometer_std_Z
- frequencyBodyAccelerometerJerk_mean_X
- frequencyBodyAccelerometerJerk_mean_Y
- frequencyBodyAccelerometerJerk_mean_Z
- frequencyBodyAccelerometerJerk_std_X
- frequencyBodyAccelerometerJerk_std_Y
- frequencyBodyAccelerometerJerk_std_Z
- frequencyBodyGyroscope_mean_X
- frequencyBodyGyroscope_mean_Y
- frequencyBodyGyroscope_mean_Z
- frequencyBodyGyroscope_std_X
- frequencyBodyGyroscope_std_Y
- frequencyBodyGyroscope_std_Z
- frequencyBodyAccelerometerMagnitude_mean
- frequencyBodyAccelerometerMagnitude_std
- frequencyBodyAccelerometerJerkMagnitude_mean
- frequencyBodyAccelerometerJerkMagnitude_std
- frequencyBodyGyroscopeMagnitude_mean
- frequencyBodyGyroscopeMagnitude_std
- frequencyBodyGyroscopeJerkMagnitude_mean
- frequencyBodyGyroscopeJerkMagnitude_std

