# The following code is based on Version 3.1.1 of R and  Windows platform

datafile <- "getdata-projectfiles-UCI.zip"
# Download and unzip file if necessary
# if (!file.exists(datafile)){
#    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#    download.file(fileURL, datafile) 
# if (!file.exists(datadir)) { 
#    unzip(datafile) 
# }

# Indicating local directories where the files are
datadir  <- "C:/Users/LENOVO/Documents/UCI HAR Dataset"
testdir  <- paste(datadir, "test", sep="/")
traindir <- paste(datadir, "train", sep="/")

#----- 1. Merges the training and the test sets to create one data set.

# Merge the test and train subject datasets
subjectTest  <- read.table(paste(testdir, "subject_test.txt", sep="/"))
subjectTrain <- read.table(paste(traindir, "subject_train.txt", sep="/"))
SubjectData <- rbind(subjectTrain, subjectTest)

# Merge the test and train labels
YTrain <- read.table(paste(traindir, "y_train.txt", sep="/"))
YTest  <- read.table(paste(testdir, "y_test.txt", sep="/"))
YData <- rbind(YTrain, YTest)

# Merge the test and train main dataset
XTrain <- read.table(paste(traindir, "X_train.txt", sep="/"))
XTest  <- read.table(paste(testdir, "X_test.txt", sep="/"))
XData <- rbind(XTrain, XTest)

# Delete used objects
rm(subjectTest, subjectTrain, YTrain, YTest, XTrain, XTest)

#----- 2. Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table(paste(datadir, "features.txt", sep="/"))
colnames(XData) <- c(as.character(features[,2])) # applying the textual headings
keep_mean <- grep("mean\\(\\)", names(XData))
keep_std <- grep("std\\(\\)", names(XData))
keepData <- XData[, c(keep_mean, keep_std)]

#----- 3. Uses descriptive activity names to name the activities in the data set.

activity_labels <- read.table(paste(datadir, "activity_labels.txt", sep="/"), colClasses = c("integer", "character"))
addData <- cbind(SubjectData, YData, keepData)
colnames(addData)[c(1,2)] <- c("Subjects", "Activity")
addData$Activity <- factor(addData$Activity, levels = activity_labels[,1], labels = activity_labels[,2])

# Deleting R used objects
rm(SubjectData, YData, YData, keepData)

#----- 4. Appropriately labels the data set with descriptive variable names.

# Change some variables names
names(addData) <- gsub("std","Std", names(addData))
names(addData) <- gsub("mean","Mean", names(addData))
names(addData) <- gsub("\\(", "", names(addData))
names(addData) <- gsub("\\)", "", names(addData))
names(addData) <- gsub("-", "", names(addData))


#----- 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyData <- aggregate(addData[,3] ~ Subjects+Activity, data = addData, FUN= "mean" )
for(i in 4:ncol(addData)){
    tidyData[,i] <- aggregate(addData[,i] ~ Subjects+Activity, data = addData, FUN= "mean" )[,3]
}
colnames(tidyData)[3:ncol(tidyData)] <- colnames(addData)[3:ncol(addData)]

write.table( tidyData, file = "TidyData.txt", row.name=FALSE)
# read.table("TidyData.txt", header = TRUE)
