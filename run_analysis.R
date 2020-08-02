### Download files
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))

activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

subjetc_test <- read.table("C:/Users/Rlima/Documents/R/Jonhs Hopkins/run_analysis/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

X_test <- read.table("C:/Users/Rlima/Documents/R/Jonhs Hopkins/run_analysis/UCI HAR Dataset/test/X_test.txt", col.names = features$functions)

test_labels <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

X_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)

train_labels <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

###1.Merges the training and the test sets to create one data set.

X <- rbind(X_train, X_test)
Y <- rbind(train_labels, test_labels)
Subject <- rbind(subject_train, subjetc_test)
Merged_Data <- cbind(Subject, Y, X)

###2.Extracts only the measurements on the mean and standard deviation for each measurement.

###3.Uses descriptive activity names to name the activities in the data set
###4.Appropriately labels the data set with descriptive variable names.
###5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
