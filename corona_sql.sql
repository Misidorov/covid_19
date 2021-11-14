USE [master]
GO

/****** Object:  Database [covid_19_michael]    Script Date: 11/10/2021 6:08:30 PM ******/
CREATE DATABASE [covid_19_michael]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'covid_19_michael', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\covid_19_michael.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'covid_19_michael_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\covid_19_michael_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [covid_19_michael].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
CREATE TABLE age_specific 
(
country	nvarchar (50),
country_code varchar (5),	
year_week	nvarchar (10),
age_group	nvarchar (10),
new_cases	int,
rate_day_per_100k nvarchar (9)
)
-----------------------------------
CREATE TABLE covid_2020 
(
geoId	nvarchar (5),
age_group	nvarchar (10),
dateRep	date,
year_week  nvarchar (10) ,	
cases	int,
deaths	int,
countriesAndTerritories nvarchar (50),	
countryterritoryCode	nvarchar (5),
popData2019	int,
continentExp nvarchar (50)
)
--------------------------------------------------
CREATE TABLE vaccantion
(
YearWeekISO	nvarchar (10),
ReportingCountry nvarchar (5),	
country	nvarchar (50),
NumberDosesReceived	int,
FirstDose int,	
SecondDose	int,
TargetGroup	nvarchar (10),
Vaccine	nvarchar (50),
Population int
)
---------------------------------------------------
CREATE TABLE variants
(
country	nvarchar (50),
country_code nvarchar (5),		
year_week nvarchar (10),	
new_cases	int,
number_sequenced int,	
variant	nvarchar (10),
number_detections_variant	int,
number_sequenced_known_variant	int,
percent_variant int
)

-----------------------------------------
CREATE TABLE CoronaUpdate
(
Country_Other	int,
Total_Cases	nvarchar (50),
Total_Cases	int,
New_Cases int,	
Total_Death	int,
New_Deaths	int,
Total_Recovered	int,
Active_Cases	int,
Serious_Critical	int,
Tot Cases_1M pop int,	
Tot Deaths_1M pop int
)
