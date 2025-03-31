Processes and transformations applied to raw data (raw data information, references etc. included at bottom of document).

1. Load libraries and raw data via Coursera sandbox tool.
2. Attach and rename (to enable capability to merge dataframes) columns to train and test data.
3. Combine train and test data.
4. Extract subject, activityId, and columns that refer to mean or standard deviation (stD).
5. Add activity names to corresponding ID.
6. Re-order columns so that activity presents first.
7. Modify column names (see full list below) in order to make them more readable for end user.
8. Calculate mean for each column based upon activity/activityID and subjectID.
9. Output table as tidyData.txt.

Column names:

1	activity
2	activityID
3	subjectID
4	timeBodyAcceleration-mean-Xaxis
5	timeBodyAcceleration-mean-Yaxis
6	timeBodyAcceleration-mean-Zaxis
7	timeGravityAcceleration-mean-Xaxis
8	timeGravityAcceleration-mean-Yaxis
9	timeGravityAcceleration-mean-Zaxis
10	timeBodyAccelerationJerk-mean-Xaxis
11	timeBodyAccelerationJerk-mean-Yaxis
12	timeBodyAccelerationJerk-mean-Zaxis
13	timeBodyGyroscope-mean-Xaxis
14	timeBodyGyroscope-mean-Yaxis
15	timeBodyGyroscope-mean-Zaxis
16	timeBodyGyroscopeJerk-mean-Xaxis
17	timeBodyGyroscopeJerk-mean-Yaxis
18	timeBodyGyroscopeJerk-mean-Zaxis
19	timeBodyAccelerationMagnitude-mean
20	timeGravityAccelerationMagnitude-mean
21	timeBodyAccelerationJerkMagnitude-mean
22	timeBodyGyroscopeMagnitude-mean
23	timeBodyGyroscopeJerkMagnitude-mean
24	frequencyBodyAcceleration-mean-Xaxis
25	frequencyBodyAcceleration-mean-Yaxis
26	frequencyBodyAcceleration-mean-Zaxis
27	frequencyBodyAcceleration-meanFreq-Xaxis
28	frequencyBodyAcceleration-meanFreq-Yaxis
29	frequencyBodyAcceleration-meanFreq-Zaxis
30	frequencyBodyAccelerationJerk-mean-Xaxis
31	frequencyBodyAccelerationJerk-mean-Yaxis
32	frequencyBodyAccelerationJerk-mean-Zaxis
33	frequencyBodyAccelerationJerk-meanFreq-Xaxis
34	frequencyBodyAccelerationJerk-meanFreq-Yaxis
35	frequencyBodyAccelerationJerk-meanFreq-Zaxis
36	frequencyBodyGyroscope-mean-Xaxis
37	frequencyBodyGyroscope-mean-Yaxis
38	frequencyBodyGyroscope-mean-Zaxis
39	frequencyBodyGyroscope-meanFreq-Xaxis
40	frequencyBodyGyroscope-meanFreq-Yaxis
41	frequencyBodyGyroscope-meanFreq-Zaxis
42	frequencyBodyAccelerationMagnitude-mean
43	frequencyBodyAccelerationMagnitude-meanFreq
44	frequencyBodyAccelerationJerkMagnitude-mean
45	frequencyBodyAccelerationJerkMagnitude-meanFreq
46	frequencyBodyGyroscopeMagnitude-mean
47	frequencyBodyGyroscopeMagnitude-meanFreq
48	frequencyBodyGyroscopeJerkMagnitude-mean
49	frequencyBodyGyroscopeJerkMagnitude-meanFreq
50	angle(tBodyAccelerationMean,gravity)
51	angle(tBodyAccelerationJerkMean),gravityMean)
52	angle(tBodyGyroscopeMean,gravityMean)
53	angle(tBodyGyroscopeJerkMean,gravityMean)
54	angle(Xaxis,gravityMean)
55	angle(Yaxis,gravityMean)
56	angle(Zaxis,gravityMean)
57	timeBodyAcceleration-stD-Xaxis
58	timeBodyAcceleration-stD-Yaxis
59	timeBodyAcceleration-stD-Zaxis
60	timeGravityAcceleration-stD-Xaxis
61	timeGravityAcceleration-stD-Yaxis
62	timeGravityAcceleration-stD-Zaxis
63	timeBodyAccelerationJerk-stD-Xaxis
64	timeBodyAccelerationJerk-stD-Yaxis
65	timeBodyAccelerationJerk-stD-Zaxis
66	timeBodyGyroscope-stD-Xaxis
67	timeBodyGyroscope-stD-Yaxis
68	timeBodyGyroscope-stD-Zaxis
69	timeBodyGyroscopeJerk-stD-Xaxis
70	timeBodyGyroscopeJerk-stD-Yaxis
71	timeBodyGyroscopeJerk-stD-Zaxis
72	timeBodyAccelerationMagnitude-stD
73	timeGravityAccelerationMagnitude-stD
74	timeBodyAccelerationJerkMagnitude-stD
75	timeBodyGyroscopeMagnitude-stD
76	timeBodyGyroscopeJerkMagnitude-stD
77	frequencyBodyAcceleration-stD-Xaxis
78	frequencyBodyAcceleration-stD-Yaxis
79	frequencyBodyAcceleration-stD-Zaxis
80	frequencyBodyAccelerationJerk-stD-Xaxis
81	frequencyBodyAccelerationJerk-stD-Yaxis
82	frequencyBodyAccelerationJerk-stD-Zaxis
83	frequencyBodyGyroscope-stD-Xaxis
84	frequencyBodyGyroscope-stD-Yaxis
85	frequencyBodyGyroscope-stD-Zaxis
86	frequencyBodyAccelerationMagnitude-stD
87	frequencyBodyAccelerationJerkMagnitude-stD
88	frequencyBodyGyroscopeMagnitude-stD
89	frequencyBodyGyroscopeJerkMagnitude-stD




From the original coursework README.md file:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

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

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
