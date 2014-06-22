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
