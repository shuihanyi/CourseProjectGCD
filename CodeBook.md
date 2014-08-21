===========================
# Cood Book
============================
Before run this script, please make sure you have put the UCI HAR Dataset to the Working Directory of R.


## Source data Information

The data are obtained here:
    <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

Info from the source data book:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

=====================================
## The transformations

`run_analysis.R` works through 3 steps:

1. Loads and merges the training and testing data sets to create a single combined data set.

2. Creates a sub-data set that only contains the measurements on the mean and standard deviation for each measurement (denoted by the presence of mean or std in the feature names).

3. Uses descriptive activity names to name the activities in the data set

4. Replaces some variable names with more descriptive ones for readability.

5. The data set is further shaped to only include aggregate mean values of each variable for each activity and each subject.

The tidy data set created through above steps is stored as a txt file: `TidyData.txt`.

======================================
## The variables in the new tidy data set

Use ```read.table("TidyData.txt", header = TRUE)``` to load the new tidy data set. 

The variable names and corresponding explanations are shown below:

<table class="table table-bordered table-striped table-condensed">
   <tr>
      <td>Subjects</td>
      <td>subject ID</td>
   </tr>
   <tr>
      <td>Activity</td>
      <td>Activities performed by the experiment subjects </td>
   </tr>
   <tr>
      <td>tBodyAccMeanX</td>
      <td>Time domain, accelerometer body signal, X axis, Mean value </td>
   </tr>
   <tr>
      <td>tBodyAccMeanY</td>
      <td>Time domain, accelerometer body signal, Y axis, Mean value </td>
   </tr>
   <tr>
      <td>tBodyAccMeanZ</td>
      <td>Time domain, accelerometer body signal, Z axis, Mean value </td>
   </tr>
   <tr>
      <td>tGravityAccMeanX</td>
      <td>Time domain, accelerometer gravity signal, X axis, Mean value</td>
   </tr>
   <tr>
      <td>tGravityAccMeanY</td>
      <td>Time domain, accelerometer gravity signal, Y axis, Mean value</td>
   </tr>
   <tr>
      <td>tGravityAccMeanZ</td>
      <td>Time domain, accelerometer gravity signal, Z axis, Mean value</td>
   </tr>
   <tr>
      <td>tBodyAccJerkMeanX</td>
      <td>Time domain, accelerometer body jerk signal, X axis, Mean value</td>
   </tr>
   <tr>
      <td>tBodyAccJerkMeanY</td>
      <td>Time domain, accelerometer body jerk signal, Y axis, Mean value</td>
   </tr>
   <tr>
      <td>tBodyAccJerkMeanZ</td>
      <td>Time domain, accelerometer body jerk signal, Z axis, Mean value</td>
   </tr>
   <tr>
      <td>tBodyGyroMeanX</td>
      <td>Time domain, gyroscope body signal, X axis, Mean value&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroMeanY</td>
      <td>Time domain, gyroscope body signal, Y axis, Mean value&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroMeanZ</td>
      <td>Time domain, gyroscope body signal, Z axis, Mean value&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkMeanX</td>
      <td>Time domain, gyroscope body jerk signal, X axis, Mean value</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkMeanY</td>
      <td>Time domain, gyroscope body jerk signal, Y axis, Mean value</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkMeanZ</td>
      <td>Time domain, gyroscope body jerk signal, Z axis, Mean value</td>
   </tr>
   <tr>
      <td>tBodyAccMagMean</td>
      <td>Time domain, accelerometer body signal magnitude, Mean value</td>
   </tr>
   <tr>
      <td>tGravityAccMagMean</td>
      <td>Time domain, accelerometer gravity signal magnitude, Mean value</td>
   </tr>
   <tr>
      <td>tBodyAccJerkMagMean</td>
      <td>Time domain, accelerometer body jerk signal magnitude, Mean value&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroMagMean</td>
      <td>Time domain, gyroscope body signal magnitude, Mean value&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkMagMean</td>
      <td>Time domain, gyroscope body jerk signal magnitude, Mean value</td>
   </tr>
   <tr>
      <td>fBodyAccMeanX</td>
      <td>Frequency domain, accelerometer body signal, X axis, Mean value</td>
   </tr>
   <tr>
      <td>fBodyAccMeanY</td>
      <td>Frequency domain, accelerometer body signal, Y axis, Mean value</td>
   </tr>
   <tr>
      <td>fBodyAccMeanZ</td>
      <td>Frequency domain, accelerometer body signal, Z axis, Mean value</td>
   </tr>
   <tr>
      <td>fBodyAccJerkMeanX</td>
      <td>Frequency domain, accelerometer body jerk signal, X axis, Mean value</td>
   </tr>
   <tr>
      <td>fBodyAccJerkMeanY</td>
      <td>Frequency domain, accelerometer body jerk signal, Y axis, Mean value</td>
   </tr>
   <tr>
      <td>fBodyAccJerkMeanZ</td>
      <td>Frequency domain, accelerometer body jerk signal, Z axis, Mean value</td>
   </tr>
   <tr>
      <td>fBodyGyroMeanX</td>
      <td>Frequency domain, gyroscope body signal, X axis, Mean value&#160;</td>
   </tr>
   <tr>
      <td>fBodyGyroMeanY</td>
      <td>Frequency domain, gyroscope body signal, Y axis, Mean value&#160;</td>
   </tr>
   <tr>
      <td>fBodyGyroMeanZ</td>
      <td>Frequency domain, gyroscope body signal, Z axis, Mean value&#160;</td>
   </tr>
   <tr>
      <td>fBodyAccMagMean</td>
      <td>Frequency domain, accelerometer body signal magnitude, Mean value</td>
   </tr>
   <tr>
      <td>fBodyBodyAccJerkMagMean</td>
      <td>Frequency domain, accelerometer body jerk signal magnitude, Mean value&#160;</td>
   </tr>
   <tr>
      <td>fBodyBodyGyroMagMean</td>
      <td>Frequency domain, gyroscope body signal magnitude, Mean value&#160;</td>
   </tr>
   <tr>
      <td>fBodyBodyGyroJerkMagMean</td>
      <td>Frequency domain, gyroscope body jerk signal magnitude, Mean value</td>
   </tr>
   <tr>
      <td>tBodyAccStdX</td>
      <td>Time domain, accelerometer body signal, X axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyAccStdY</td>
      <td>Time domain, accelerometer body signal, Y axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyAccStdZ</td>
      <td>Time domain, accelerometer body signal, Z axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tGravityAccStdX</td>
      <td>Time domain, accelerometer gravity signal, X axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tGravityAccStdY</td>
      <td>Time domain, accelerometer gravity signal, Y axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tGravityAccStdZ</td>
      <td>Time domain, accelerometer gravity signal, Z axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tBodyAccJerkStdX</td>
      <td>Time domain, accelerometer body jerk signal, X axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyAccJerkStdY</td>
      <td>Time domain, accelerometer body jerk signal, Y axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyAccJerkStdZ</td>
      <td>Time domain, accelerometer body jerk signal, Z axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroStdX</td>
      <td>Time domain, gyroscope body signal, X axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tBodyGyroStdY</td>
      <td>Time domain, gyroscope body signal, Y axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tBodyGyroStdZ</td>
      <td>Time domain, gyroscope body signal, Z axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkStdX</td>
      <td>Time domain, gyroscope body jerk signal, X axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkStdY</td>
      <td>Time domain, gyroscope body jerk signal, Y axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkStdZ</td>
      <td>Time domain, gyroscope body jerk signal, Z axis, Standard deviation</td>
   </tr>
   <tr>
      <td>tBodyAccMagStd</td>
      <td>Time domain, accelerometer body signal magnitude, Standard deviation</td>
   </tr>
   <tr>
      <td>tGravityAccMagStd</td>
      <td>Time domain, accelerometer gravity signal magnitude, Standard deviation</td>
   </tr>
   <tr>
      <td>tBodyAccJerkMagStd</td>
      <td>Time domain, accelerometer body jerk signal magnitude, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroMagStd</td>
      <td>Time domain, gyroscope body signal magnitude, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>tBodyGyroJerkMagStd</td>
      <td>Time domain, gyroscope body jerk signal magnitude, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyAccStdX</td>
      <td>Frequency domain, accelerometer body signal, X axis, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyAccStdY</td>
      <td>Frequency domain, accelerometer body signal, Y axis, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyAccStdZ</td>
      <td>Frequency domain, accelerometer body signal, Z axis, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyAccJerkStdX</td>
      <td>Frequency domain, accelerometer body jerk signal, X axis, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyAccJerkStdY</td>
      <td>Frequency domain, accelerometer body jerk signal, Y axis, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyAccJerkStdZ</td>
      <td>Frequency domain, accelerometer body jerk signal, Z axis, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyGyroStdX</td>
      <td>Frequency domain, gyroscope body signal, X axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>fBodyGyroStdY</td>
      <td>Frequency domain, gyroscope body signal, Y axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>fBodyGyroStdZ</td>
      <td>Frequency domain, gyroscope body signal, Z axis, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>fBodyAccMagStd</td>
      <td>Frequency domain, accelerometer body signal magnitude, Standard deviation</td>
   </tr>
   <tr>
      <td>fBodyBodyAccJerkMagStd</td>
      <td>Frequency domain, accelerometer body jerk signal magnitude, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>fBodyBodyGyroMagStd</td>
      <td>Frequency domain, gyroscope body signal magnitude, Standard deviation&#160;</td>
   </tr>
   <tr>
      <td>fBodyBodyGyroJerkMagStd</td>
      <td>Frequency domain, gyroscope body jerk signal magnitude, Standard deviation</td>
   </tr>
</table>






