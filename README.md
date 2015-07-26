
Project for the Coursera class: "Getting and Cleaning Data"
===================================================================================================
Submitted by Alison E. Turnbull on July 26, 2015

The file run_analysis.R contains the code I used to download the Human Activity Recognition Using Smartphones Data Set from the UCI website, merge the training and test sets, and extract the mean and standard deviation of 86 measures obtained on 30 volunteers performing 6 activities.  The resulting dataset contains 180 rows with each row containing data on a unique combition of activity and study subject (30 volunteers x 6 activities).  A codebook containing a description of each of the variables in this resulting dataset is provided at the end of this file.  Additional information about the Human Activity Recognition Using Smartphones Data Set is also provided below. 

Human Activity Recognition Using Smartphones Dataset
===================================================================================================
Version 1.0
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)

1 - Smartlab - Non-Linear Complex Systems Laboratory DITEN - Università  degli Studi di Genova, Genoa (I-16145), Italy. 

2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain activityrecognition '@' smartlab.ws 

The experiment was carried out with a group of 30 volunteers (subjects) within an age bracket of 19-48 years. 
Each subject performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity was obtained at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. "

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm  (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).                                                                                                                                                                                                                                        
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
Note the 'f' to indicate frequency domain signals)

Notes: 
======
- Features are normalized and bounded within [-1,1].
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

For more information about this dataset please contact: activityrecognition '@' smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Other Related Publications:

[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz.  Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care.   Volume 19, Issue 9. May 2013

[3] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

[4] Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  


==================================================================================================
CODEBOOK
==================================================================================================
Column	Variable name		  	Definition

1	subject	          		Study subject identification number.  Integer variable ranging from 1 - 30.
  
2	activity	        	Factor variable describing the activity subject was demonstrating while measures were obtained.

3	tBodyAcc-mean()-X		Mean of body acceleration signal along the X axis as measured in 'g's

4	tBodyAcc-mean()-Y		Mean of body acceleration signal along the Y axis as measured in 'g's

5	tBodyAcc-mean()-Z		Mean of body acceleration signal along the Z axis as measured in 'g's

6	tBodyAcc-std()-X		Standard Deviation of body acceleration signal along the X axis as measured in 'g's

7	tBodyAcc-std()-Y		Standard Deviation of body acceleration signal along the Y axis as measured in 'g's

8	tBodyAcc-std()-Z		Standard Deviation of body acceleration signal along the Z axis as measured in 'g's

9	tGravityAcc-mean()-X		Mean of gravity acceleration signalalong the X axis as measured in 'g's

10	tGravityAcc-mean()-Y		Mean of gravity acceleration signalalong the Y axis as measured in 'g's

11	tGravityAcc-mean()-Z		Mean of gravity acceleration signalalong the Z axis as measured in 'g's

12	tGravityAcc-std()-X		Standard Deviation of gravity acceleration signal along the X axis as measured in 'g's

13	tGravityAcc-std()-Y		Standard Deviation of gravity acceleration signal along the Y axis as measured in 'g's

14	tGravityAcc-std()-Z		Standard Deviation of gravity acceleration signal along the Z axis as measured in 'g's

15	tBodyAccJerk-mean()-X		Mean ofbody linear accelerationalong the X axis as measured in 'g's

16	tBodyAccJerk-mean()-Y		Mean ofbody linear accelerationalong the Y axis as measured in 'g's

17	tBodyAccJerk-mean()-Z		Mean ofbody linear accelerationalong the Z axis as measured in 'g's

18	tBodyAccJerk-std()-X		Standard Deviation of body linear acceleration along the X axis as measured in 'g's

19	tBodyAccJerk-std()-Y		Standard Deviation of body linear acceleration along the Y axis as measured in 'g's

20	tBodyAccJerk-std()-Z		Standard Deviation of body linear acceleration along the Z axis as measured in 'g's

21	tBodyGyro-mean()-X		Mean ofthe angular vector measured by the gyroscope along the X axis as measured in rad/seg

22	tBodyGyro-mean()-Y		Mean ofthe angular vector measured by the gyroscope along the Y axis as measured in rad/seg

23	tBodyGyro-mean()-Z		Mean ofthe angular vector measured by the gyroscope along the Z axis as measured in rad/seg

24	tBodyGyro-std()-X		Standard Deviation ofthe angular vector measured by the gyroscope along the X axis as measured in rad/seg

25	tBodyGyro-std()-Y		Standard Deviation ofthe angular vector measured by the gyroscope along the Y axis as measured in rad/seg

26	tBodyGyro-std()-Z		Standard Deviation ofthe angular vector measured by the gyroscope along the Z axis as measured in rad/seg

27	tBodyGyroJerk-mean()-X		Mean ofangular velocity jerk signal along the X axis as measured in rad/seg

28	tBodyGyroJerk-mean()-Y		Mean ofangular velocity jerk signal along the Y axis as measured in rad/seg

29	tBodyGyroJerk-mean()-Z		Mean ofangular velocity jerk signal along the Z axis as measured in rad/seg

30	tBodyGyroJerk-std()-X		Standard Deviation ofangular velocity jerk signal along the X axis as measured in rad/seg

31	tBodyGyroJerk-std()-Y		Standard Deviation ofangular velocity jerk signal along the Y axis as measured in rad/seg

32	tBodyGyroJerk-std()-Z		Standard Deviation ofangular velocity jerk signal along the Z axis as measured in rad/seg

33	tBodyAccMag-mean()		Mean of 3-dimensional body linear acceleration magnitude calculated using the Euclidean norm in 'g's

34	tBodyAccMag-std()		Standard Deviation of 3-dimensional body linear acceleration magnitude calculated using the Euclidean norm in 'g's

35	tGravityAccMag-mean()		Mean of gravity acceleration magnitude calculated using the Euclidean norm in 'g's

36	tGravityAccMag-std()		Standard Deviation of gravity acceleration magnitude calculated using the Euclidean norm in 'g's

37	tBodyAccJerkMag-mean()		Mean of the 3-dimensional acceleration jerk signal magnitude calculated using the Euclidean norm in 'g's

38	tBodyAccJerkMag-std()		Standard Deviation of the 3-dimensional acceleration jerk signal magnitude calculated using the Euclidean norm in 'g's

39	tBodyGyroMag-mean()		Mean of magnitude of the angular velocity vector measured by the gyroscopecalculated using the Euclidean norm in 'g's

40	tBodyGyroMag-std()		Standard Deviation of magnitude of the angular velocity vector measured by the gyroscopecalculated using the Euclidean norm in 'g's

41	tBodyGyroJerkMag-mean()		Mean of 3-dimensional angular velocity jerk signal calculated using the Euclidean norm in 'g's

42	tBodyGyroJerkMag-std()		Standard Deviation of 3-dimensional angular velocity jerk signal calculated using the Euclidean norm in 'g's

43	fBodyAcc-mean()-X		Mean of accelerationalong the X axis as measured in 'g's

44	fBodyAcc-mean()-Y		Mean of accelerationalong the Y axis as measured in 'g's

45	fBodyAcc-mean()-Z		Mean of accelerationalong the Z axis as measured in 'g's

46	fBodyAcc-std()-X		Standard Deviation of accelerationalong the X axis as measured in 'g's

47	fBodyAcc-std()-Y		Standard Deviation of accelerationalong the Y axis as measured in 'g's

48	fBodyAcc-std()-Z		Standard Deviation of accelerationalong the Z axis as measured in 'g's

49	fBodyAcc-meanFreq()-X		Mean frequency of accelerationalong the X axis as measured in 'g's

50	fBodyAcc-meanFreq()-Y		Mean frequency of accelerationalong the Y axis as measured in 'g's

51	fBodyAcc-meanFreq()-Z		Mean frequency of accelerationalong the Z axis as measured in 'g's

52	fBodyAccJerk-mean()-X		Mean of linear acceleration transformed using the Fast Fourier Transformalong the X axis as measured in 'g's

53	fBodyAccJerk-mean()-Y		Mean of linear acceleration transformed using the Fast Fourier Transformalong the Y axis as measured in 'g's

54	fBodyAccJerk-mean()-Z		Mean of linear acceleration transformed using the Fast Fourier Transformalong the Z axis as measured in 'g's

55	fBodyAccJerk-std()-X		Standard Deviation of linear acceleration transformed using the Fast Fourier Transformalong the X axis as measured in 'g's

56	fBodyAccJerk-std()-Y		Standard Deviation of linear acceleration transformed using the Fast Fourier Transformalong the Y axis as measured in 'g's

57	fBodyAccJerk-std()-Z		Standard Deviation of linear acceleration transformed using the Fast Fourier Transformalong the Z axis as measured in 'g's

58	fBodyAccJerk-meanFreq()-X	Mean frequency of linear acceleration transformed using the Fast Fourier Transformalong the X axis as measured in 'g's

59	fBodyAccJerk-meanFreq()-Y	Mean frequency of linear acceleration transformed using the Fast Fourier Transformalong the Y axis as measured in 'g's

60	fBodyAccJerk-meanFreq()-Z	Mean frequency of linear acceleration transformed using the Fast Fourier Transformalong the Z axis as measured in 'g's

61	fBodyGyro-mean()-X		Mean of angular velocity transformed using the Fast Fourier Tranform along the X axis as measured in rad/seg

62	fBodyGyro-mean()-Y		Mean of angular velocity transformed using the Fast Fourier Tranform along the Y axis as measured in rad/seg

63	fBodyGyro-mean()-Z		Mean of angular velocity transformed using the Fast Fourier Tranform along the Z axis as measured in rad/seg

64	fBodyGyro-std()-X		Standard Deviation of angular velocity transformed using the Fast Fourier Tranform along the X axis as measured in rad/seg

65	fBodyGyro-std()-Y		Standard Deviation of angular velocity transformed using the Fast Fourier Tranform along the Y axis as measured in rad/seg

66	fBodyGyro-std()-Z		Standard Deviation of angular velocity transformed using the Fast Fourier Tranform along the Z axis as measured in rad/seg

67	fBodyGyro-meanFreq()-X		Mean frequency of angular velocity transformed using the Fast Fourier Tranform along the X axis as measured in rad/seg

68	fBodyGyro-meanFreq()-Y		Mean frequency of angular velocity transformed using the Fast Fourier Tranform along the Y axis as measured in rad/seg

69	fBodyGyro-meanFreq()-Z		Mean frequency of angular velocity transformed using the Fast Fourier Tranform along the Z axis as measured in rad/seg

70	fBodyAccMag-mean()		Mean ofacceleration magnitude transformed using the Fast Fourier Transformation as measured in 'g's

71	fBodyAccMag-std()		Standard Deviation ofacceleration magnitude transformed using the Fast Fourier Transformation as measured in 'g's

72	fBodyAccMag-meanFreq()		Mean frequency ofacceleration magnitude transformed using the Fast Fourier Transformation as measured in 'g's

73	fBodyBodyAccJerkMag-mean()	Mean of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

74	fBodyBodyAccJerkMag-std()	Standard Deviation of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

75	fBodyBodyAccJerkMag-meanFreq()	Mean frequency of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

76	fBodyBodyGyroMag-mean()		Mean of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

77	fBodyBodyGyroMag-std()		Standard Deviation of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

78	fBodyBodyGyroMag-meanFreq()	Mean frequency of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

79	fBodyBodyGyroJerkMag-mean()	Mean of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

80	fBodyBodyGyroJerkMag-std()	Standard Deviation of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

81	fBodyBodyGyroJerkMag-meanFreq()	Mean frequency of 3-dimensional jerk signal magnitude transformed using the Fast Fourier Transformation in rad/seg

82	angle(tBodyAccMean,gravity)	Mean of total body acceleration angle 

83	angle(tBodyAccJerkMean),gravityMean)	Mean of total body jerk signal angle 

84	angle(tBodyGyroMean,gravityMean)	Mean of angle of body angular velocity measured with gyroscope 

85	angle(tBodyGyroJerkMean,gravityMean)	Mean of angle of body jerk signal measured with gyroscope 

86	angle(X,gravityMean)		Mean of angle of total accelerationalong the X axis 

87	angle(Y,gravityMean)		Mean of angle of total accelerationalong the Y axis 

88	angle(Z,gravityMean)		Mean of angle of total accelerationalong the Z axis 
