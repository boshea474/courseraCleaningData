#load libraries
library(readr)
library(dplyr)

#load data via sandbox tool

#attach + rename columns to ready merging of data
colnames(X_train) <- features$V2
colnames(X_test) <- features$V2

y_train <- rename(y_train, "activityID" = "V1")
y_test <- rename(y_test, "activityID" = "V1")

subject_train <- rename(subject_train, "subjectID" = "V1")
subject_test <- rename(subject_test, "subjectID" = "V1")

colnames(activity_labels) <- c("activityID", "activity")

#merging data frames to central train and test dfs, using cbind given that the number of rows in data frames are equal.
train_df <- cbind(subject_train, y_train, X_train)
test_df <- cbind(subject_test, y_test, X_test)

#concat train and test data
df <- rbind(train_df, test_df)

#extract columns that only refer to either mean or std
dfMean <- df[ ,grep("[Mm]ean", names(df))]
dfStd <- df[, grep("[Ss][Tt][Dd]", names(df))]

#bring back together in one df whilst keeping subject and activityId
df2 <- cbind(df[,(1:2)], dfMean, dfStd)

#merge with activity_labels df to add activity names
df2 <- merge(df2, activity_labels, by = "activityID", all.y = TRUE)
write.table(df2, file = "df2.txt", row.name=FALSE)

#reorder so that activityLabel presents first
df3 <- df2 %>% select("activity", everything())

#modify columns name to enhance readability
colnames(df3) <- gsub("\\(\\)", "", colnames(df3))
colnames(df3) <- sub("^(t)", "time", colnames(df3))
colnames(df3) <- sub("Acc", "Acceleration", colnames(df3))
colnames(df3) <- sub("Gyro", "Gyroscope", colnames(df3))
colnames(df3) <- sub("\\b[Ff]req\\b)", "Frequency", colnames(df3))
colnames(df3) <- sub("^(f)", "frequency", colnames(df3))
colnames(df3) <- sub("Mag", "Magnitude", colnames(df3))
colnames(df3) <- sub("BodyBody", "Body", colnames(df3))
colnames(df3) <- sub("[Ss][Tt][Dd]", "stD", colnames(df3))
colnames(df3) <- sub("\\bX\\b", "Xaxis", colnames(df3))
colnames(df3) <- sub("\\bY\\b", "Yaxis", colnames(df3))
colnames(df3) <- sub("\\bZ\\b", "Zaxis", colnames(df3))

#create pipeline that builds new df with the mean for the groupby of activity & subject
tidyData <- df3 %>% group_by(activity, activityID, subjectID) %>% summarize_all(mean)

#write final df to file
write.table(tidyData, file = "tidyData.txt", row.name=FALSE)
