# Databricks Data Engineering Pipeline

## Overview:
This project focuses on building an end-to-end data engineering pipeline using Databricks, targeting the refinement of raw data into a consumable format ready for analysis and visualization. The pipeline follows the ETL (Extract, Transform, Load) process to convert raw data into structured, refined data, progressing from bronze to silver and gold layers.

![Pipeline Flow](https://github.com/DhaneshSarpale/Databricks-IoT/blob/main/Pipeline%20Flow.jpg)

[Link to Databricks Dashboard](https://databricks-prod-cloudfront.cloud.databricks.com/public/4027ec902e239c93eaaa8714f173bcfc/7740050962745411/2007676982286802/2016063543754681/latest.html)
- Access a Databricks Dashboard 

[Link to Databricks Notebook](https://databricks-prod-cloudfront.cloud.databricks.com/public/4027ec902e239c93eaaa8714f173bcfc/7771030287757023/1693771869421258/2141620800104381/latest.html)
- This link leads to Databricks notebook, publicly available, providing additional insights and analyses. Dive deeper into the project.

[Link to Delta Lake Image](https://github.com/DhaneshSarpale/Databricks-IoT/blob/main/src/img/Screenshot%202024-03-14%20180121.png)
- View an image depicting Delta Lake architecture, an integral part of the project's data processing infrastructure.

[Link to Power BI Report](https://app.powerbi.com/view?r=eyJrIjoiNzRlOWMyYzQtNjg0MC00Yzg4LWEwNDItYTE3NDU5ODFkMWI2IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9&pageName=ReportSection)
- This link directs you to a Power BI report showcasing visualizations and insights derived from the provided dataset. Explore various data-driven charts and graphs for deeper analysis.

## Datasets:
- **`userdata` Dataset:** Contains essential information about users' health and lifestyle, including demographics and health indicators.
- **`devicedata` Dataset:** Complements user-centric data with insights derived from device metrics, facilitating analysis of user activity and device usage.

## ETL Process Overview:
1. **Extract:** Raw data is retrieved from Databricks sample datasets (`userdata` and `devicedata`) for further processing.
2. **Transform:**
   - Data is cleansed to handle missing or inconsistent values.
   - Aggregation is performed at the hourly level for enhanced granularity.
   - Additional transformations are applied to enrich data quality and utility.
3. **Load:** Transformed data is loaded into Delta Lake tables, optimized for efficient querying and visualization.

## Data Aggregation:
Data is aggregated at the hourly level to facilitate efficient analysis and visualization, enabling the observation of trends and patterns in user activity and health metrics over time.

## Goals:
- Ensure data consistency and integrity across datasets.
- Enhance data quality through cleaning and normalization.
- Aggregate data at the hourly level for improved analysis granularity.
- Optimize data structures for efficient querying and visualization.

## Key Steps:
1. **Data Extraction:** Raw data is extracted from Databricks sample datasets (`dbfs:/databricks-datasets/iot-stream/data-device/` and `dbfs:/databricks-datasets/iot-stream/data-user`).
2. **Data Transformation:** Data is transformed using PySpark, including breakdown of timestamp into date and time components, and creation of temporary views for analysis.
3. **Aggregation:** Aggregation is performed at the bronze to silver transition, enhancing data granularity for analysis.
4. **Table Creation:** Delta Lake tables are created for each layer of the pipeline (bronze, silver, and gold) to store refined data.

## Data Consumptions:
Refined data in the gold layer is ready for consumption and visualization in downstream applications such as Power BI dashboards.
