run<- function(){
  
  library(reshape2)
  
  setwd("/media/amit14c/X/DataScience/Getting and Cleaning data/UCI HAR Dataset/train")
  
  subject_train<-read.csv("subject_train.txt")
  x_train<-read.csv("X_train.txt")
  y_train<-read.csv("y_train.txt")
  
  setwd("/media/amit14c/X/DataScience/Getting and Cleaning data/UCI HAR Dataset/train/Inertial Signals")
  acc_xtrain<- read.csv("body_acc_x_train.txt")
  acc_ytrain<- read.csv("body_acc_y_train.txt")
  acc_ztrain<- read.csv("body_acc_z_train.txt")
  gyro_xtrain<- read.csv("body_gyro_x_train.txt")
  gyro_ytrain<- read.csv("body_gyro_y_train.txt")
  gyro_ztrain<- read.csv("body_gyro_z_train.txt")
  totalacc_xtrain<- read.csv("total_acc_x_train.txt")
  totalacc_ytrain<- read.csv("total_acc_y_train.txt")
  totalacc_ztrain<- read.csv("total_acc_z_train.txt")
  
  merged_train<- merge(subject_train,x_train,y_train,acc_xtrain,acc_ytrain,acc_ztrain,gyro_xtrain,gyro_ytrain,gyro_ztrain,totalacc_xtrain,totalacc_ytrain,totalacc_ztrain)
  
  setwd("/media/amit14c/X/DataScience/Getting and Cleaning data/UCI HAR Dataset/test")
  
  subject_test<-read.csv("subject_test.txt")
  x_test<-read.csv("x_test.txt")
  y_test<-read.csv("y_test.txt")
  
  setwd("/media/amit14c/X/DataScience/Getting and Cleaning data/UCI HAR Dataset/test/Inertial Signals")
  
  acc_xtest<- read.csv("body_acc_x_test.txt")
  acc_ytest<- read.csv("body_acc_y_test.txt")
  acc_ztest<- read.csv("body_acc_z_test.txt")
  gyro_xtest<- read.csv("body_gyro_x_test.txt")
  gyro_ytest<- read.csv("body_gyro_y_test.txt")
  gyro_ztest<- read.csv("body_gyro_z_test.txt")
  totalacc_xtest<- read.csv("total_acc_x_test.txt")
  totalacc_ytest<- read.csv("total_acc_y_test.txt")
  totalacc_ztest<- read.csv("total_acc_z_test.txt")
  
  merged_test<- merge(subject_test,x_test,y_test,acc_xtest,acc_ytest,acc_ztest,gyro_xtest,gyro_ytest,gyro_ztest,totalacc_xtest,totalacc_ytest,totalacc_ztest)
  
  mergedData<- merge(merged_test,merged_train)
  
  col_means = apply(mergedData,2,mean)
  col_standard_deviation = apply(mergedData,2,sd)
  
  final<- merge(col_means,col_standard_deviation, all = TRUE)
  
  final
    
}