# run_analysis.R
library(plyr)
setwd("~/DS/peer3")

datapath <- "UCI HAR Dataset"
## 1) Merge the training and the test sets to create one data set.
xTrain <- read.table(paste(datapath, "train", "x_train.txt", sep="/"))
yTrain <- read.table(paste(datapath, "train", "y_train.txt", sep="/"))
subTrain <- read.table(paste(datapath, "train", "subject_train.txt", sep="/"))
xTest <- read.table(paste(datapath, "test", "x_test.txt", sep="/"))
yTest <- read.table(paste(datapath, "test", "y_test.txt", sep="/"))
subTest <- read.table(paste(datapath, "test", "subject_test.txt", sep="/"))
x <- rbind(xTrain, xTest)
y <- rbind(yTrain, yTest)
subject <- rbind(subTrain, subTest)


## 2) Extract only the measurements on the mean and standard deviation 
## for each measurement.
features <- read.table(paste(datapath, "features.txt", sep="/"))
meanSd <- grep("-(mean|std)\\(\\)", features[, 2])
x <- x[,meanSd]
names(x) <- features[meanSd,2]

## 3) Use descriptive activity names to name the activities in the data set
activityLabels <- read.table(paste(datapath, "activity_labels.txt", sep="/"))
y[,1] <- activityLabels[y[,1],2]
names(y) <- "Activity"

## 4) Appropriately labels the data set with descriptive variable names.
names(subject) <- "Subject"
names(x) <- gsub("-mean\\(\\)", "Mean", names(x))
names(x) <- gsub("-std\\(\\)", "StdDev", names(x))
names(x) <- gsub("-", "", names(x))

merged <- cbind(subject, x, y)
## 5) From the data set in step 4, creates a second, independent 
## tidy data set with the average of each variable for each activity and each subject.
secondDataSet <- ddply(merged, c("Subject","Activity"), numcolwise(mean))

### txt file created with write.table() using row.name=FALSE 
write.table(secondDataSet, "step5.txt", row.names = FALSE)