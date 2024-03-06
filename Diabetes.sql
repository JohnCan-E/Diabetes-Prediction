--6 SQL questions related with diabetes.csv file 

select * 
from Diabetes

-- top 3  highest Glucose levels in each age group, along with their ages.

select Age, Glucose
from 
(select Age, Glucose, ROW_NUMBER() over (partition by Age order by Glucose DESC ) as RowNumber
from diabetes
) as Ranked
where RowNumber<=3;



--the average Blood Pressure for individuals with a BMI greater than the average BMI in the dataset.

select avg(BloodPressure) as AVG_BloodPressure
from Diabetes
where BMI> (select  avg(BMI) from Diabetes);



 
 
 --retrieve the Glucose levels and BMI of individuals with a Diabetes Pedigree Function greater than the average for their respective age groups?

 select Glucose, BMI
 from Diabetes as d
 inner join (select Age , avg(DiabetesPedigreeFunction) as avg_DPF
 from Diabetes
 group by Age )
 as Avg_DPF
 on d.Age=Avg_DPF.Age
where d.DiabetesPedigreeFunction>Avg_DPF.avg_DPF;



 --the average Skin Thickness for individuals with more than 3 pregnancies, grouping them by their age ranges (0-30, 31-50, 51+)

 SELECT 
    CASE 
        WHEN Age BETWEEN 0 AND 30 THEN '0-30'
        WHEN Age BETWEEN 31 AND 50 THEN '31-50'
        ELSE '51+'
    END AS Grouped_Ages,
    AVG(SkinThickness) AS Avg_Skin_Thickness
FROM Diabetes
WHERE Pregnancies > 3
GROUP BY 
    CASE 
        WHEN Age BETWEEN 0 AND 30 THEN '0-30'
        WHEN Age BETWEEN 31 AND 50 THEN '31-50'
        ELSE '51+'
    END;



 --the Glucose levels and Outcome status of individuals with a BMI greater than 30, sorted by Glucose levels in descending order.

 SELECT Glucose, Outcome
FROM Diabetes
WHERE BMI > 30
ORDER BY Glucose DESC;

 



--the count of individuals for each Outcome status, having at least 100 individuals in each group

SELECT Outcome, COUNT(*) AS Count
FROM Diabetes
GROUP BY Outcome
HAVING COUNT(*) >= 100;

