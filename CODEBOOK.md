#CODEBOOK.MD
##Experiment
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

##For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##The dataset includes the following files:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

##Notes

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer-XYZ and TimeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMag, TimeGravityAccelerationMag, TimeBodyAccelerationJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FreqBodyAcceleration-XYZ, FreqBodyAccelerationJerk-XYZ, FreqBodyGyro-XYZ, FreqBodyAccelerationJerkMag, FreqBodyGyroMag, FreqBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Units
- Features are normalized and bounded within [-1,1].
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

##Variables
"ActivityId": ID of the activity performed (1 to 6)
"SubjectId": ID of the subject performing the activity (1 to 30)
"ActivityLabel": Name corresponding to Activity ID
"TimeBodyAcceleration.mean...X": Mean of the time of acceleration of body (X axis)
"TimeBodyAcceleration.mean...Y": Mean of the time of acceleration of body (Y axis)
"TimeBodyAcceleration.mean...Z": Mean of the time of acceleration of body (Z axis)
"TimeGravityAcceleration.mean...X": Mean of the time of gravity acceleration of body (X axis)
"TimeGravityAcceleration.mean...Y": Mean of the time of gravity acceleration of body (Y axis)
"TimeGravityAcceleration.mean...Z": Mean of the time of gravity acceleration of body (Z axis)
"TimeBodyAccelerationJerk.mean...X": Mean of the time of acceleration Jerk of body (X axis)
"TimeBodyAccelerationJerk.mean...Y": Mean of the time of acceleration Jerk of body (Y axis)
"TimeBodyAccelerationJerk.mean...Z": Mean of the time of acceleration Jerk of body (Z axis)
"TimeBodyGyro.mean...X": Mean of the body gyroscope measurement of time (X axis)
"TimeBodyGyro.mean...Y": Mean of the body gyroscope measurement of time (Y axis)
"TimeBodyGyro.mean...Z": Mean of the body gyroscope measurement of time (Z axis)
"TimeBodyGyroJerk.mean...X": Mean of the body gyroscope measurement Jerk of time (X axis)
"TimeBodyGyroJerk.mean...Y": Mean of the body gyroscope measurement Jerk of time (Y axis)
"TimeBodyGyroJerk.mean...Z": Mean of the body gyroscope measurement Jerk of time (Z axis)
"TimeBodyAccelerationMag.mean..": Mean of the magnitude of body acceleration time
"TimeGravityAccelerationMag.mean..": Mean of the magnitude of gravity acceleration time
"TimeBodyAccelerationJerkMag.mean..": Mean of the magnitude of body acceleration Jerk time
"TimeBodyGyroMag.mean..": Mean of the magnitude of body gyroscope measurement time
"TimeBodyGyroJerkMag.mean..": Mean of the magnitude of body gyroscope measurement Jerk time
"FreqBodyAcceleration.mean...X": Mean of the frequency of acceleration of body (X axis)
"FreqBodyAcceleration.mean...Y": Mean of the frequency of acceleration of body (Y axis)
"FreqBodyAcceleration.mean...Z": Mean of the frequency of acceleration of body (Z axis)
"FreqBodyAcceleration.meanFreq...X": Mean of the frequency (weighted) of acceleration of body (X axis)
"FreqBodyAcceleration.meanFreq...Y": Mean of the frequency (weighted) of acceleration of body (Y axis)
"FreqBodyAcceleration.meanFreq...Z": Mean of the frequency (weighted) of acceleration of body (Z axis)
"FreqBodyAccelerationJerk.mean...X": Mean of the frequency of Jerk acceleration of body (X axis)
"FreqBodyAccelerationJerk.mean...Y": Mean of the frequency of Jerk acceleration of body (Y axis)
"FreqBodyAccelerationJerk.mean...Z": Mean of the frequency of Jerk acceleration of body (Z axis)
"FreqBodyAccelerationJerk.meanFreq...X": Mean of the frequency (weighted) of Jerk acceleration of body (X axis)
"FreqBodyAccelerationJerk.meanFreq...Y": Mean of the frequency (weighted) of Jerk acceleration of body (Y axis)
"FreqBodyAccelerationJerk.meanFreq...Z": Mean of the frequency (weighted) of Jerk acceleration of body (Z axis)
"FreqBodyGyro.mean...X": Mean of frequency gyroscope body measurement (X axis)
"FreqBodyGyro.mean...Y": Mean of frequency gyroscope body measurement (Y axis)
"FreqBodyGyro.mean...Z": Mean of frequency gyroscope body measurement (Z axis)
"FreqBodyGyro.meanFreq...X": Mean of frequency (weighted) gyroscope body measurement (X axis)
"FreqBodyGyro.meanFreq...Y": Mean of frequency (weighted) gyroscope body measurement (Y axis)
"FreqBodyGyro.meanFreq...Z": Mean of frequency (weighted) gyroscope body measurement (Z axis)
"FreqBodyAccelerationMag.mean..": Mean of frequency of body acceleration magnitude 
"FreqBodyAccelerationMag.meanFreq..": Mean of frequency (weighted) of body acceleration magnitude
"FreqBodyBodyAccelerationJerkMag.mean..": Mean of frequency of body acceleration Jerk magnitude
"FreqBodyBodyAccelerationJerkMag.meanFreq..": Mean of frequency (weighted) of body acceleration Jerk magnitude
"FreqBodyBodyGyroMag.mean..": Mean of frequency of body gyroscope magnitude
"FreqBodyBodyGyroMag.meanFreq..": Mean of frequency (weighted) of body gyroscope magnitude
"FreqBodyBodyGyroJerkMag.mean..": Mean of frequency of body gyroscope Jerk magnitude
"FreqBodyBodyGyroJerkMag.meanFreq..": Mean of frequency (weighted) of body gyroscope Jerk magnitude
"angleTimeBodyAccelerationMean.gravity.": Mean of time of angle of body acceleration gravity
"angleTimeBodyAccelerationJerkMean..gravityMean.": Mean of time of angle of body Jerk acceleration gravity
"angleTimeBodyGyroMean.gravityMean.": Mean of time of angle of body gyroscope gravity
"angleTimeBodyGyroJerkMean.gravityMean.": Mean of time of angle of body Jerk gyroscope gravity
"angle.X.gravityMean.": angle to gravity mean (X axis)
"angle.Y.gravityMean.": angle to gravity mean (Y axis)
"angle.Z.gravityMean.": angle to gravity mean (Z axis)
"TimeBodyAcceleration.std...X": Std of the time of acceleration of body (X axis)
"TimeBodyAcceleration.std...Y": Std of the time of acceleration of body (Y axis)
"TimeBodyAcceleration.std...Z": Std of the time of acceleration of body (Z axis)
"TimeGravityAcceleration.std...X": Std of the time of gravity acceleration of body (X axis) 
"TimeGravityAcceleration.std...Y": Std of the time of gravity acceleration of body (Y axis) 
"TimeGravityAcceleration.std...Z": Std of the time of gravity acceleration of body (Z axis) 
"TimeBodyAccelerationJerk.std...X": Std of the time of Jerk acceleration of body (X axis)
"TimeBodyAccelerationJerk.std...Y": Std of the time of Jerk acceleration of body (Y axis)
"TimeBodyAccelerationJerk.std...Z": Std of the time of Jerk acceleration of body (Z axis)
"TimeBodyGyro.std...X": Std of the body gyroscope measurement of time (X axis)
"TimeBodyGyro.std...Y": Std of the body gyroscope measurement of time (Y axis)
"TimeBodyGyro.std...Z": Std of the body gyroscope measurement of time (Z axis)
"TimeBodyGyroJerk.std...X": Std of the body gyroscope Jerk measurement of time (X axis)
"TimeBodyGyroJerk.std...Y": Std of the body gyroscope Jerk measurement of time (Y axis)
"TimeBodyGyroJerk.std...Z": Std of the body gyroscope Jerk measurement of time (Z axis)
"TimeBodyAccelerationMag.std..": Std of the magnitude of body acceleration time
"TimeGravityAccelerationMag.std..": Std of the magnitude of gravity acceleration time
"TimeBodyAccelerationJerkMag.std..": Std of the magnitude of body Jerk acceleration time
"TimeBodyGyroMag.std..": Std of the magnitude of body gryroscope measurement time
"TimeBodyGyroJerkMag.std..": Std of the magnitude of body gryroscope Jerk measurement time
"FreqBodyAcceleration.std...X": Std of the frequency of acceleration of body (X axis)
"FreqBodyAcceleration.std...Y": Std of the frequency of acceleration of body (Y axis)
"FreqBodyAcceleration.std...Z": Std of the frequency of acceleration of body (Z axis)
"FreqBodyAccelerationJerk.std...X": Std of the frequency of Jerk acceleration of body (X axis)
"FreqBodyAccelerationJerk.std...Y": Std of the frequency of Jerk acceleration of body (Y axis)
"FreqBodyAccelerationJerk.std...Z": Std of the frequency of Jerk acceleration of body (Z axis)
"FreqBodyGyro.std...X": Std of frequency gyroscope body measurement (X axis)
"FreqBodyGyro.std...Y": Std of frequency gyroscope body measurement (Y axis)
"FreqBodyGyro.std...Z": Std of frequency gyroscope body measurement (Z axis)
"FreqBodyAccelerationMag.std..": Std of frequency of body acceleration magnitude 
"FreqBodyBodyAccelerationJerkMag.std..": Std of frequency of body acceleration Jerk magnitude 
"FreqBodyBodyGyroMag.std..": Std of frequency of body gyroscope magnitude
"FreqBodyBodyGyroJerkMag.std..": Std of frequency of body gyroscope Jerk magnitude