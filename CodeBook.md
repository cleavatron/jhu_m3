Code Book
========

About the Data
--------------
#### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### Source

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Data Download
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Transformation
-------------------

The run_analysis.R script performs the operations below on the data set:

- Test and training data are merged into a single dataset
- The mean and standard deviation for each measurement are extracted
- Descriptive activity names are used to name the activities in the data set
- Descriptive variable names are used to appropriately label the data set
- A second, independent tidy data set with the average of each variable for each activity and each subject and the output of this is written to a text file

Tidied Columns
-------------------
1. Subject
2. Activity
3. tBodyAccMeanX
4. tBodyAccMeanY
5. tBodyAccMeanZ
6. tBodyAccStdDevX
7. tBodyAccStdDevY
8. tBodyAccStdDevZ
9. tGravityAccMeanX
10. tGravityAccMeanY
11. tGravityAccMeanZ
12. tGravityAccStdDevX
13. tGravityAccStdDevY
14. tGravityAccStdDevZ
15. tBodyAccJerkMeanX
16. tBodyAccJerkMeanY
17. tBodyAccJerkMeanZ
18. tBodyAccJerkStdDevX
19. tBodyAccJerkStdDevY
20. tBodyAccJerkStdDevZ
21. tBodyGyroMeanX
22. tBodyGyroMeanY
23. tBodyGyroMeanZ
24. tBodyGyroStdDevX
25. tBodyGyroStdDevY
26. tBodyGyroStdDevZ
27. tBodyGyroJerkMeanX
28. tBodyGyroJerkMeanY
29. tBodyGyroJerkMeanZ
30. tBodyGyroJerkStdDevX
31. tBodyGyroJerkStdDevY
32. tBodyGyroJerkStdDevZ
33. tBodyAccMagMean
34. tBodyAccMagStdDev
35. tGravityAccMagMean
36. tGravityAccMagStdDev
37. tBodyAccJerkMagMean
38. tBodyAccJerkMagStdDev
39. tBodyGyroMagMean
40. tBodyGyroMagStdDev
41. tBodyGyroJerkMagMean
42. tBodyGyroJerkMagStdDev
43. fBodyAccMeanX
44. fBodyAccMeanY
45. fBodyAccMeanZ
46. fBodyAccStdDevX
47. fBodyAccStdDevY
48. fBodyAccStdDevZ
49. fBodyAccJerkMeanX
50. fBodyAccJerkMeanY
51. fBodyAccJerkMeanZ
52. fBodyAccJerkStdDevX
53. fBodyAccJerkStdDevY
54. fBodyAccJerkStdDevZ
55. fBodyGyroMeanX
56. fBodyGyroMeanY
57. fBodyGyroMeanZ
58. fBodyGyroStdDevX
59. fBodyGyroStdDevY
60. fBodyGyroStdDevZ
61. fBodyAccMagMean
62. fBodyAccMagStdDev
63. fBodyBodyAccJerkMagMean
64. fBodyBodyAccJerkMagStdDev
65. fBodyBodyGyroMagMean
66. fBodyBodyGyroMagStdDev
67. fBodyBodyGyroJerkMagMean
68. fBodyBodyGyroJerkMagStdDev