To start you must load the script using:

source("run_analysis.R")

then start the script execution with:

run_analysis()


The script first loads all the files x_all and x_all then makes a cbind of them into xy_all. Adds the column names.
Therefore selects the columns containing mean and std from the xy_all into xy_all_subset
Moreover adds the activity label column joining the xy_all_subset and activityLabel frames. Writes the resulting table into a file.
Finally performs a melt and cbind with the average result of each activity label for each column. Writes the resulting table into a file. 
