-- Databricks notebook source
SELECT *
FROM `gold_user`

-- COMMAND ----------

SELECT count(userid)
FROM gold_user

-- COMMAND ----------

SELECT round(avg(weight) , 2)
FROM `gold_user`

-- COMMAND ----------

SELECT round(avg(height) , 2)
FROM `gold_user`

-- COMMAND ----------

SELECT  BMI_Category , count(BMI_Category)
FROM `gold_user`
GROUP BY BMI_Category

-- COMMAND ----------

SELECT gender , count(gender)
FROM gold_user
GROUP BY gender

-- COMMAND ----------

WITH base as (SELECT 
CASE
WHEN age > 0 and age <= 30 THEN '0-30'
WHEN age > 30 and age <= 45 THEN '30-45'
ELSE '45-60'
END as age_group
FROM gold_user)
SELECT age_group, count(age_group)
FROM base
GROUP BY age_group


-- COMMAND ----------

SELECT bp , cholestlevs 
FROM `gold_user`


-- COMMAND ----------

SELECT smoker , count(smoker)
 FROM `gold_user`
 GROUP BY smoker

-- COMMAND ----------

SELECT 
gender, familyhistory
 FROM `gold_user`

-- COMMAND ----------


