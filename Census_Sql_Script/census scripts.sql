select count(*) from industry;
select * from educationv;

 -- Total Population with Bachelors Degree or Higher by Year
 
select Year, sum(bachelors_degree_or_higher)  as bachelorsDegree_or_higher,
 sum(high_school_or_some_degree) as highSchool_or_someDegree, 
 sum(Less_than_high_school_graduate) as Less_than_highSchool_graduate
from Educationv group by year;

-- Total population by salary earn category and year

select Year, sum(Less_than_$5000)as population_of_Less_than_$5000,
sum($5000_to_$9999)as population_of_$5000_to_$9999,
sum($10000_to_$14999) as population_of_$10000_to_$14999,
sum($15000_to_$19999) as population_of_$15000_to_$19999,
sum($20000_to_$24999) as population_of_$20000_to_$24999,
sum($25000_to_$34999) as population_of_$25000_to_$34999,
sum($35000_to_$49999) as population_of_$35000_to_$49999,
sum($50000_to_$74999) as population_of_$50000_to_$74999,
sum($75000_to_$99999) as population_of_$75000_to_$99999,
sum($100000_to_$149999) as population_of_$100000_to_$149999,
sum($150000_or_more) as population_of_$150000_or_more
from finance
group by year;

-- Total population by INDUSTRY CATEGORY and year

select Year, sum(Total_Agriculture_forestry_fishing_hunting_mining) as population_of_Agric,
sum(Total_Construction) as population_of_Construction,
sum(Total_Manufacturing) as population_of_Manufacturing,
sum(Total_Wholesale_trade) as population_of_Wholesale_trader,
sum(Total_Retail_trade) as population_of_Retailers,
sum(Total_Transportation_warehousing_utilities) as population_of_Transporters,
sum(Total_Information) as population_of_Information,
sum(Total_Finance_insurance_realestate_rental_leasing) as population_of_finance,
sum(Total_Professional_scientific_management) as population_of_professionals,
sum(Total_Educationalservices_healthcare_socialassistance) as population_of_Educationist,
sum(Total_Arts_entertainment_recreation_accommodation_foodservices) as population_of_Art,
sum(Total_Otherservices_except_Public_administration) as population_of_otherservicer,
sum(Total_Public_administration) as population_of_pulicAdministrators
from industry
group by Year;

-- population and comparison of gender and there industry category

Select year, sum(Male) as population_of_male, 
sum(female) as population_of_Female,
sum(Male_Agriculture_forestry_fishing_hunting_mining) as Pop_of_maleAgric,
sum(female_Agriculture_forestry_fishing_hunting_mining) as Pop_of_femaleAgric,
sum(Male_Construction) as Pop_of_MaleConstruction,
sum(female_Construction) as Pop_of_femaleConstruction,
sum(Male_Transportation_warehousing_utilities) as pop_of_MaleTransporters,
sum(female_Transportation_warehousing_utilities) as pop_of_femaleTransporters,
sum(Male_Wholesale_trade) as pop_of_MaleWholesaler,
sum(female_Wholesale_trade) as pop_of_femaleWholesaler,
sum(Male_Professional_scientific_management_administrative) as pop_of_MaleProfessional,
sum(female_Professional_scientific_management_administrative) as pop_of_femaleProfessional from industry group by year;

-- percentage of Population with Bachelors Degree or Higher in Relation to Total Population by year

select year, (sum(Bachelors_degree_or_higher)/ (sum(Bachelors_degree_or_higher) + sum(high_school_or_some_degree) + sum(Less_than_high_school_graduate)) * 100) as Percentage_of_popBachelors_degree_or_higher from educationv group by year;

select year, (sum(high_school_or_some_degree)/ (sum(Bachelors_degree_or_higher) + sum(high_school_or_some_degree) + sum(Less_than_high_school_graduate)) * 100) as Percentage_of_pophigh_school_or_some_degree from educationv group by year;

select year, (sum(Less_than_high_school_graduate)/ (sum(Bachelors_degree_or_higher) + sum(high_school_or_some_degree) + sum(Less_than_high_school_graduate)) * 100) as Percentage_of_popLess_than_high_school_graduate from educationv group by year;

-- join table

select 
    e.Year, 
    e.Bachelors_degree_or_higher, 
    f.$20000_to_$24999, 
    f.$50000_to_$74999, 
    i.Total_Retail_trade, 
    i.Total_Manufacturing
from Educationv e
join Finance f on e.Year = f.Year and e.cd = f.cd
join Industry i on e.Year = i.Year and e.cd = i.cd;

-- Compare Income with Education Levels

select e.year, sum($50000_to_$74999) as avg_pop_of_bachelorDegree_74999,
sum($35000_to_$49999) as avg_pop_of_bachelorDegree_49999 from finance f
left join educationv e on e.year = f.year
where Bachelors_degree_or_higher >0
group by year;

select i.year, sum(i.Total_Professional_scientific_management) as pop_professional,
avg(f.$150000_or_more) as avgPop_$150000_or_more
from industry i
join finance f on i.year=f.year
group by year;

-- population of high school graduate with less than $5000 earning

select e.year, sum(e.Less_than_high_school_graduate)
 as pop_HighSchoolGraduate,
avg(f.Less_than_$5000) 
from educationv e
left join finance f on e.year=f.year
group by year;

select i.year, sum(i.Total_Professional_scientific_management) as POP_of_professional,
sum(i.Total_Manufacturing) as POP_of_manufacturer,
sum(i.Total_Agriculture_forestry_fishing_hunting_mining) as POP_of_agric,
sum(i.Total_Construction) as POP_of_construction,
avg(f.$15000_to_$19999),
avg(f.$20000_to_$24999),
avg(f.$35000_to_$49999),
avg(f.$50000_to_$74999) 
from industry i
join finance f on i.year=f.year
group by year;


select  cd, sum(high_school_or_some_degree),
sum(Bachelors_degree_or_higher),
sum(Less_than_high_school_graduate)
from educationv
group by year, cd;

-- population growth industry sector over the year 
-- this show there is positive growth over the year in the population of construction
select year, (sum(Total_Construction) - lag(sum(Total_Construction))
over (order by (year))) as pop_constructionGrowth 
from industry
group by year;


-- this shows there is no growth in population in this industrial sector over the year 
 
select year, (sum(Total_Agriculture_forestry_fishing_hunting_mining) - lag(sum(Total_Agriculture_forestry_fishing_hunting_mining)) 
over (order by (year))) as POP_agricGrowth 
from industry group by year;

 -- Correlation Between Education Levels and Income Brackets
 
 with EducationIncome as
 (select e.year, 
 e.Bachelors_degree_or_higher,
 f.$20000_to_$24999,
 f.$35000_to_$49999
 from educationv e
 join finance f on e.year=f.year)
 select year
  