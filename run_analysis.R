# Load dplyr package
library(dplyr)

activities <- read.table("data/activity_labels.txt", col.names = c("ActivityID", "ActivityName"))
features <- read.table("data/features.txt", col.names = c("FeatureID", "FeatureName"))

# Clean up feature names prior to using as variable names.  Variable names were 
features$FeatureName <- gsub("\\-|\\(\\)", "", features$FeatureName) 
features$FeatureName <- gsub("mean", "Mean", features$FeatureName)
features$FeatureName <- gsub("std", "Std", features$FeatureName)
features$FeatureName <- gsub("X$", "_X", features$FeatureName)
features$FeatureName <- gsub("Y$", "_Y", features$FeatureName)
features$FeatureName <- gsub("Z$", "_Z", features$FeatureName)
features$FeatureName <- gsub("^t", "time_", features$FeatureName)
features$FeatureName <- gsub("^f", "freq_", features$FeatureName)

# Use read.table to read in the test data
subject_test <- read.table("data/test/subject_test.txt", col.names = "SubjectID")
y_test <- read.table("data/test/y_test.txt", col.names = "ActivityID")
idInfoTest <- cbind(subject_test, y_test) %>% merge(activities) %>% select(-ActivityID)
idInfoTest$ActivityName <- factor(idInfoTest$ActivityName, levels = activities$ActivityName)
X_test <- read.table("data/test/X_test.txt", col.names = features$FeatureName)
test_data <- cbind(idInfoTest, X_test)

# Use read.table to read in the train data
subject_train <- read.table("data/train/subject_train.txt", col.names = "SubjectID")
y_train <- read.table("data/train/y_train.txt", col.names = "ActivityID")
idInfoTrain <- cbind(subject_train, y_train) %>% merge(activities) %>% select(-ActivityID)
idInfoTrain$ActivityName <- factor(idInfoTrain$ActivityName, levels = activities$ActivityName)
X_train <- read.table("data/train/X_train.txt", col.names = features$FeatureName)
train_data <- cbind(idInfoTrain, X_train)

# Combine to create full data set, extract mean and std columns, and wrap in tbl_df
full_data <- rbind(test_data, train_data) %>% select(1:2, matches("std|mean"), -(matches("meanfreq|gravitymean|angle"))) %>% tbl_df() 

# Clean up
rm(list = c("activities", "features", "idInfoTest", "idInfoTrain", "subject_test", "subject_train", "test_data", "train_data", 
            "X_test", "X_train", "y_test", "y_train"))

# Group data by SubjectID and ActivityName
final_data <- full_data %>% group_by(SubjectID, ActivityName) %>% summarise_each(funs(mean))
rm(list = "full_data")
write.table(final_data, file = "output.txt", row.name = FALSE)

