# Diabetes-Prediction (ipykernel)


-After transferring the necessary libraries to our ipykernel, visualized with matplotlib. 
-x and y axises determined 
-dropped(removed) dependent variable ; which was axis =1 (Glucose)
-raw data values have to be within 0 and 1, so normailization's done
-I split train and test data from each other
-I trained data to distinguish between healthy and diabetic people
-KNN Model has been created
-I tested the data for k range and set values according to  a 'for loop' which I have created.
-As last, scaled the data with Min-Max, and made predictions with the KNN model. As a result, the risk of diabetes was estimated.



For SQL quries questions
Title: Diabetes 

The Diabetes Management System is a SQL project designed to facilitate the analysis and management of diabetes-related data. The project revolves around a dataset containing various health parameters of individuals, including pregnancies, glucose levels, blood pressure, skin thickness, insulin levels, BMI, diabetes pedigree function, age, and diabetes outcome.

The project aims to provide valuable insights into diabetes patterns, risk factors, and management strategies through SQL queries and analysis.
I have used advanced SQL techniques such as subqueries, partitioning, joins, case statements etc.

--6 SQL questions related with diabetes.csv file are ; 
1)top 3  highest Glucose levels in each age group, along with their ages.
2)the average Blood Pressure for individuals with a BMI greater than the average BMI in the dataset.
3)retrieve the Glucose levels and BMI of individuals with a Diabetes Pedigree Function greater than the average for their respective age groups?
4)the average Skin Thickness for individuals with more than 3 pregnancies, grouping them by their age ranges (0-30, 31-50, 51+)
5)the Glucose levels and Outcome status of individuals with a BMI greater than 30, sorted by Glucose levels in descending order.
6)the count of individuals for each Outcome status, having at least 100 individuals in each group
