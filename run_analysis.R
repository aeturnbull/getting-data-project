## Alison E. Turnbull
## Coursera - Getting & Cleaning Data
## Course project

##Download raw Samsung data to your working directory in a file called "raw.zip" 

        library(RCurl)
        library(dplyr)
        fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile="raw.zip", mode = "wb")
        file_ls<-as.character(unzip("raw.zip", list=T)$Name)  ## Allows you to see the names of all the files the zip file. 
        dateDownloaded<-date()
        
## Extract needed files from the zip file        
        testset<-read.table(unz("raw.zip", file_ls[17]))
        testlabels<-read.table(unz("raw.zip", file_ls[18]))
        subjecttest<-read.table(unz("raw.zip", file_ls[16]))
        
        subjecttrain<-read.table(unz("raw.zip", file_ls[30]))
        trainingset<-read.table(unz("raw.zip", file_ls[31]))
        traininglabels<-read.table(unz("raw.zip", file_ls[32]))
        
        activitylabels<-read.table(unz("raw.zip", file_ls[1]))
        features<-read.table(unz("raw.zip", file_ls[2]))
        features_info<-readLines(unz("raw.zip", file_ls[3]))
        

# 1.	Merges the training and the test sets to create one data set and labels the resulting data set with descriptive variable names.    

        data<-rbind(testset, trainingset) 
        allsubjects<-rbind(subjecttest, subjecttrain)
        alllabels<-rbind(testlabels, traininglabels)
        data<-cbind(allsubjects, alllabels, data)  #Add the subject and activity labels to each row
        colnames(data)[1]<-"subject"
        colnames(data)[2]<-"activity"
        colnames(data)[3:563]<-as.character(features$V2)  #Add the feautures/measurement labels to each column
        rm(subjecttest, subjecttrain, testlabels, traininglabels)

# 2.   Extracts only the measurements on the mean and standard deviation for each measurement. 

        means<-as.numeric(as.character(grep("mean", features$V2, ignore.case = TRUE)))
        stds<-as.numeric(as.character(grep("std", features$V2, ignore.case = TRUE)))
        meanorstd<- c(means, stds)
        rm(means, stds)
        meanorstd<-sort(meanorstd)  ##Note, there are 86
        meanorstd2<-(meanorstd+2)   ##Need to add 2 to each column number to account for the addition of subject and activity data

        data2<-data[, c(1,2,meanorstd2)]  ##Good, 88 variables as it should be!

# 3.   Uses descriptive activity names to name the activities in the data set
        data2$activity<-as.factor(data2$activity)
        data2$activity<-revalue(data2$activity, c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS", "4"="SITTING", "5"="STANDING", "6"="LAYING"))                

# 4.	Appropriately labels the data set with descriptive variable names. 
        # This was done in Step 1.

# 5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

        data3<- data2 %>% group_by(subject, activity) %>% summarise_each(funs(mean))     
        write.table(data3, file="20150725_Turnbull_CourseProject.txt", row.name=FALSE)