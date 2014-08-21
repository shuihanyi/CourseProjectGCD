======================
#Getting and Cleaning Data Course Project


This is a repository for the course project of the online course Getting and Cleaning Data from Coursera.

The purpose of this project is to collect, work with, and clean a data set, thereby creating a tidy data that can be used for later analysis.


### The scource data info

The source data is collected from the accelerometers from the Samsung Galaxy S smartphone.

Here are the data for the project: 
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

For more information about the original dataset please refer to following link:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>


===============================

### Files contained in this repo

1. `run_analysis.R` works through 3 steps:

    1). Loads and merges the training and testing data sets to create a single combined data set.
    
    2). Creates a sub-data set that only contains the measurements on the mean and standard deviation for each measurement (denoted by the presence of mean or std in the feature names).

    3). Uses descriptive activity names to name the activities in the data set

    4). Replaces some variable names with more descriptive ones for readability.

    5). The data set is further shaped to only include aggregate mean values of each variable for each activity and each subject.


2. `TidyData.txt`

	The tidy data set created through above steps is stored as a txt file.

3. `CodeBook.md`
	Detailed info about the new tidy data set can be found in this file, which provides variable names and corresponding explanations.


===============================
### Dependencies
The code in this repo is based on Version 3.1.1 of R and  Windows platform.
