Variable name									Function

subject_train									stores data from the file 'subject_train.txt'
x_train										stores data from the file 'x_train.txt'
y_train										stores data from the file 'y_train.txt'

acc_xtrain									stores data from the file 'body_acc_x_train.txt'
acc_ytrain									stores data from the file 'body_acc_y_train.txt'		acc_ztrain									stores data from the file 'body_acc_z_train.txt'
gyro_xtrain									stores data from the file 'gyro_acc_x_train.txt'
gyro_ytrain									stores data from the file 'gyro_acc_y_train.txt'
gyro_ztrain									stores data from the file 'gyro_acc_z_train.txt'
totalacc_xtrain									stores data from the file 'total_acc_x_train.txt'
totalacc_ytrain									stores data from the file 'total_acc_y_train.txt'
totalacc_ztrain									stores data from the file 'total_acc_z_train.txt'

subject_test									stores data from the file 'subject_test.txt'
x_test										stores data from the file 'x_test.txt'
y_test										stores data from the file 'y_test.txt'

acc_xtest									stores data from the file 'body_acc_x_test.txt'
acc_ytest									stores data from the file 'body_acc_y_test.txt'
acc_ztest									stores data from the file 'body_acc_z_test.txt'
gyro_xtest									stores data from the file 'gyro_acc_x_test.txt'
gyro_ytest									stores data from the file 'gyro_acc_y_test.txt'
gyro_ztest									stores data from the file 'gyro_acc_z_test.txt'
totalacc_xtest									stores data from the file 'total_acc_x_test.txt'
totalacc_ytest									stores data from the file 'total_acc_y_test.txt'
totalacc_ztest									stores data from the file 'total_acc_z_test.txt'

merged_test									merges and stores all the files from the test folder 
merged_train									merges and stores all the files from the train folder

mergedData									merges the merged_test and merged_train data frames

col_means									calculates the means of all columns in the mergedData data frame
col_standard_deviation								calculates the standarad deviation of all columns in mergedData 										data frame
