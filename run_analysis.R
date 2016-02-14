setwd("C:/Users/Andreu/Documents/Documentos/Data Science coursera/Data cleaning/Project_data_cleaning")
library(dplyr)
if(!file.exists('Results')){
  dir.create('Results')
} 
##########DOWNLOAD DATA############

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,"dataset.zip")

#Unzip de file downloaded
unzip("dataset.zip")
setwd(paste0(getwd(),"/","UCI HAR Dataset"))

#Generic function to read a table
readTable <- function(attr = NULL, name, colnames = NULL){
  if (is.null(attr)){
    path <- paste0(getwd(),"/",name)
  } else {
    path <- paste0(getwd(),"/",attr,"/",name)
  }
  if(is.null(colnames)){
    table <- read.table(path, stringsAsFactors = F)
  } else {
    table <- read.table(path, stringsAsFactors = F, col.names = colnames)
  }
}

###################READ DATA##########################

#Read main tables
features <- readTable(name = "features.txt")
activity.labels <- readTable(name = "activity_labels.txt", colnames = c("ActivityId","ActivityLabel"))
train <- readTable(attr = "train", name = "X_train.txt", colnames = features$V2)
test <- readTable(attr = "test", name = "X_test.txt", colnames = features$V2)


#Complete tables adding Activity ID and Subject ID
train.set <- cbind(readTable(attr = "train", name = "y_train.txt", colnames = "ActivityId"),
                   readTable(attr = "train", name = "subject_train.txt", colnames = "SubjectId"),
                   train)
test.set <- cbind(readTable(attr = "test", name = "y_test.txt", colnames = "ActivityId"),
                  readTable(attr = "test", name = "subject_test.txt", colnames = "SubjectId"),
                  test)

######################MERGE DATA########################

#Merge train and test, common columns so no merge required
set <- rbind(train.set,test.set)
#Order data
set <- arrange(set,ActivityId,SubjectId)

#####################EXTRACT MEAN AND STD ONLY MEASUREMENTS################

#Note the [Mm] because we also need to include some variable with Mean instead of mean.
set.reduced <- set[,c(1,2,grep("[Mm]ean",names(set)),grep("std",names(set)))]
#Save result
write.table(set.reduced,"./Results/set_reduced.txt",row.names=F)

#####################ACTIVITY NAMES#################################

#We use merge to match the Activity ID with the Activity Name
set.reduced <- merge(set.reduced,activity.labels,by="ActivityId",all.x=T)
set.reduced <- set.reduced[,c(1,ncol(set.reduced),2:(ncol(set.reduced)-1))]

####################LABEL VARIABLES#################################

#We read features_info.txt to extract information about variables
#Then, we replace the names for a more explanatory ones.
#First time (variables that start with t or have .t in it)
names(set.reduced) <- gsub("^t|\\.t","Time",names(set.reduced))
#Then frequency (variables that start with f)
names(set.reduced) <- gsub("^f","Freq",names(set.reduced))
#Acc for acceleration
names(set.reduced) <- gsub("Acc","Acceleration",names(set.reduced))
write.table(set.reduced,"./Results/set_goodNames.txt",row.names=F)

###################TIDY DATA SET####################################

set2 <- aggregate( .~ ActivityId + SubjectId + ActivityLabel, set.reduced, mean)
set2 <- arrange(set2, ActivityId, SubjectId)
# write.csv(set2,"set2_tidy.csv")
write.table(set2,"./Results/set2_tidy_output.txt",row.names=F)

