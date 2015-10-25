Getting and Cleaning Data: Course Project
=========================================

Introduction
------------
This repository contains my work for the course project for the Coursera course "Getting and Cleaning data", part of the Data Science specialization.
What follows first are my notes on the original data.

About the raw data
------------------

All data is found in the data directory.  Within the data directory, there are two further directories, test and train.
Information on all features (561 of them) can be found in features.txt.
The activity labels are in the activity_labels.txt file.

The training and test directories hold three relevant files.  Subject_text.txt and Subject_train.txt show the subjects taking part in the data set.  X_test.txt provides information on the feature measurements themselves, and y_test.txt and y_train.txt provide information on the activities.

About the script and the tidy dataset
-------------------------------------
I created a script called run_analysis.R which will reads the relevant files and modifies the feature names for readibility.  It then merge subject, activity and measurement data into one data frame (first test info and then train info). The combined data is then grouped and summarised, to provide means by subject and activity.  Finally, the data was output to output.txt and then the workspace was cleaned up.

Prerequisites for this script:

1. the UCI HAR Dataset must be extracted and placed in the data folder in the working directory
2. the train and test data must remain in their respective directories.

After merging testing and training, labels are added and only columns that have to do with mean and standard deviation are kept.

Lastly, the script will create a tidy data set containing the means of all the columns per test subject and per activity.

This tidy dataset will be written to a tab-delimited file called output.txt, which can also be found uploaded to the class site.

About the Code Book
-------------------
The CodeBook.md file explains the transformations performed and the resulting data and variables.