## Peer Assessments /Getting and Cleaning Data Course Project
## 1.- Merges the training and the test sets to create one data set.
## read the x_test and x_train files
listOfXFiles <- c("./UCI HAR Dataset/test/X_test.txt",
                 "./UCI HAR Dataset/train/X_train.txt")
x_all <- ldply(listOfXFiles, read.table)
## read and write column headers for x_test and x_train files
headerColumns <- read.table("./UCI HAR Dataset/features.txt")
## 4.- Appropriately labels the data set with descriptive variable names. 
colnames(x_all) <- headerColumns[[2]]
## read activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
## read the y_test and y_train files
listOfYFiles <- c("./UCI HAR Dataset/test/Y_test.txt",
                  "./UCI HAR Dataset/train/Y_train.txt")
y_all <- ldply(listOfYFiles, read.table)
## name the column headers as labels
colnames(y_all) <- c("labels")
## put the x and y together
xy_all <- cbind(x_all,y_all)

## 2.- Extracts only the measurements on the mean and standard deviation for each measurement. 
xy_all_subset <- subset(xy_all, select=(names(xy_all)[grep(".*-mean\\(\\)|.*-std\\(\\)|labels",names(xy_all))]))

## 3.- Uses descriptive activity names to name the activities in the data set
xy_activity_labels <- join(xy_all_subset,activityLabels,type="inner")
write.table(xy_activity_labels,file="xy_activity_labels.csv")
## (step 4 already done see above)

## 5.-Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
xy_melt <- melt(xy_activity_labels,id=c("activityLabels"),measure.vars=names(xy_activity_labels)[1:66])
xy_cast_mean <- dcast(xy_melt,activityLabels ~ variable,mean)
write.table(xy_activity_labels,file="xy_cast_mean.csv")

