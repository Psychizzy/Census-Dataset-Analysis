# Census-Dataset-Analysis
 # Overview
This project analyzes the U.S. Census Dataset, which includes three tables: Education, Finance, and Industry. The analysis focuses on various aspects such as educational attainment, income distribution, industry employment, and gender-based comparisons over different years. The goal is to extract meaningful insights and visualize trends in education, income, and industry sectors.

# Tables
* Education

- Year: The year of the data record.
- cd: Code for specific demographic or geographic group.
- Bachelors_degree_or_higher: Number of individuals with a bachelor's degree or higher.
- high_school_or_some_degree: Number of individuals with at least a high school diploma or some degree.
- Less_than_high_school_graduate: Number of individuals with less than a high school education.
  
* Finance
- Year: The year of the data record.
- cd: Code for specific demographic or geographic group.
- Less_than_$5000: Number of individuals earning less than $5,000.
- $5000_to_$9999: Number of individuals earning between $5,000 and $9,999.
- $10000_to_$14999: Number of individuals earning between $10,000 and $14,999.
- $15000_to_$19999: Number of individuals earning between $15,000 and $19,999.
- $20000_to_$24999: Number of individuals earning between $20,000 and $24,999.
- $25000_to_$34999: Number of individuals earning between $25,000 and $34,999.
- $35000_to_$49999: Number of individuals earning between $35,000 and $49,999.
- $50000_to_$74999: Number of individuals earning between $50,000 and $74,999.
- $75000_to_$99999: Number of individuals earning between $75,000 and $99,999.
- $100000_to_$149999: Number of individuals earning between $100,000 and $149,999.
- $150000_or_more: Number of individuals earning $150,000 or more.
  
* Industry
- Year: The year of the data record.
- cd: Code for specific demographic or geographic group.
- Total_Agriculture_forestry_fishing_hunting_mining: Total population employed in agriculture and related fields.
- Total_Construction: Total population employed in construction.
- Total_Manufacturing: Total population employed in manufacturing.
- Total_Wholesale_trade: Total population employed in wholesale trade.
- Total_Retail_trade: Total population employed in retail trade.
- Total_Transportation_warehousing_utilities: Total population employed in transportation, warehousing, and utilities.
- Total_Information: Total population employed in information services.
- Total_Finance_insurance_realestate_rental_leasing: Total population employed in finance, insurance, real estate, rental, and leasing.
- Total_Professional_scientific_management: Total population employed in professional, scientific, and management roles.
- Total_Educationalservices_healthcare_socialassistance: Total population employed in educational services, healthcare, and social assistance.
- Total_Arts_entertainment_recreation_accommodation_foodservices: Total population employed in arts, entertainment, recreation, accommodation, and food services.
- Total_Otherservices_except_Public_administration: Total population employed in other services excluding public administration.
- Total_Public_administration: Total population employed in public administration.
- Male: Total male population.
- Female: Total female population.
  
# Analysis
- Total Population with Bachelors Degree or Higher by Year
Aggregates the total number of individuals with a bachelor's degree or higher, high school or some degree, and less than high school graduate by year.

- Total Population by Salary Earn Category and Year
Aggregates the population by different salary brackets and years to understand income distribution over time.

- Total Population by Industry Category and Year
Aggregates the population across various industry sectors to observe trends and distributions.

- Population and Comparison of Gender and Industry Categories
Compares the male and female populations across different industry sectors to analyze gender distribution in various fields.

- Percentage of Population with Bachelors Degree or Higher in Relation to Total Population by Year
Calculates the percentage of the population with a bachelor's degree or higher relative to the total population with varying educational levels.

- Join Table Analysis
Joins Education, Finance, and Industry tables to compare educational attainment with income and industry employment.

- Compare Income with Education Levels
Analyzes income brackets in relation to the educational attainment levels to understand how education impacts earnings.

- Population of High School Graduates with Less than $5000 Earning
Examines the population of high school graduates earning less than $5,000 and their distribution.

- Population Growth in Industry Sectors Over the Years
Analyzes the growth or decline in population in specific industry sectors over the years.

- Educational Attainment: Trends in the number of individuals with higher education degrees and how this changes over time.
- Income Distribution: Insights into how income brackets vary over years and how different income groups are represented.
- Industry Employment: Analysis of employment trends in various industries and how they shift over time.
- Gender Disparities: Examination of gender distribution in different industries and how it evolves.
- Education and Income Correlation: Understanding how educational levels affect income and whether higher education leads to higher earnings.
  
# Usage
To execute these queries, ensure the dataset is loaded into your SQL database, and run the queries using your preferred SQL client (e.g., MySQL Workbench). These queries will help you derive meaningful insights from the U.S. Census data and support various data-driven decisions.

