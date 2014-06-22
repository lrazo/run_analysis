This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

The script defines the following variables:

x_all 				- data frame containing all the data from x_test and x_train

y_all 				- data frame containing all the data from y_test and y_train

headerColumns 		- data frame containing the header columns data for the x_all data frame

activityLabels 		- data frame containing the relation label number and activity label

xy_all 				- data frame containing all the data from x_all and y_all 

xy_all_subset 		- data frame containing all the data from xy_all but only with the mean and std columns

xy_activity_labels 	- data frame containing all the data from xy_all_subset with the activityLabel column. Stored as a file.

xy_melt				- data frame containing the melt result of xy_activity_labels using the activityLabel as grouping column

xy_cast_mean		- data frame containing the average of each variable for each activity and each subject. Stored as a file.



The script first loads all the files x_all and x_all then makes a cbind of them into xy_all. 
The script reads the column names from another file and adds them to the xy_all data frame. 
Therefore selects using regex only the columns containing the mean and std from the xy_all into xy_all_subset.  
Moreover adds the activity label column joining the xy_all_subset and activityLabel frames. Writes the resulting table into a file. 
Finally performs a melt and cbind with the average result of each activity label for each column. Writes the resulting table into a file.



This are the labels employed as columns in the data farmes xy_activity_labels and as variables in xy_cast_mean:

tBodyAcc-mean()-X 

tBodyAcc-mean()-Y 

tBodyAcc-mean()-Z 

tBodyAcc-std()-X 

tBodyAcc-std()-Y 

tBodyAcc-std()-Z 

tGravityAcc-mean()-X 

tGravityAcc-mean()-Y 

tGravityAcc-mean()-Z 

tGravityAcc-std()-X 

tGravityAcc-std()-Y 

tGravityAcc-std()-Z 

tBodyAccJerk-mean()-X 

tBodyAccJerk-mean()-Y 

tBodyAccJerk-mean()-Z 

tBodyAccJerk-std()-X 

tBodyAccJerk-std()-Y 

tBodyAccJerk-std()-Z 

tBodyGyro-mean()-X 

tBodyGyro-mean()-Y 

tBodyGyro-mean()-Z 

tBodyGyro-std()-X 

tBodyGyro-std()-Y 

tBodyGyro-std()-Z 

tBodyGyroJerk-mean()-X 

tBodyGyroJerk-mean()-Y 

tBodyGyroJerk-mean()-Z 

tBodyGyroJerk-std()-X 

tBodyGyroJerk-std()-Y 

tBodyGyroJerk-std()-Z 

tBodyAccMag-mean() 

tBodyAccMag-std() 

tGravityAccMag-mean() 

tGravityAccMag-std() 

tBodyAccJerkMag-mean() 

tBodyAccJerkMag-std() 

tBodyGyroMag-mean() 

tBodyGyroMag-std() 

tBodyGyroJerkMag-mean() 

tBodyGyroJerkMag-std() 

fBodyAcc-mean()-X 

fBodyAcc-mean()-Y 

fBodyAcc-mean()-Z 

fBodyAcc-std()-X 

fBodyAcc-std()-Y 

fBodyAcc-std()-Z 

fBodyAccJerk-mean()-X 

fBodyAccJerk-mean()-Y 

fBodyAccJerk-mean()-Z 

fBodyAccJerk-std()-X 

fBodyAccJerk-std()-Y 

fBodyAccJerk-std()-Z 

fBodyGyro-mean()-X 

fBodyGyro-mean()-Y 

fBodyGyro-mean()-Z 

fBodyGyro-std()-X 

fBodyGyro-std()-Y 

fBodyGyro-std()-Z 

fBodyAccMag-mean() 

fBodyAccMag-std() 

fBodyBodyAccJerkMag-mean() 

fBodyBodyAccJerkMag-std() 

fBodyBodyGyroMag-mean() 

fBodyBodyGyroMag-std() 

fBodyBodyGyroJerkMag-mean() 

fBodyBodyGyroJerkMag-std() 

labels

activityLabels 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation
