DROP TABLE IF EXISTS us_census_tracts_2014_2017;

CREATE TABLE us_census_tracts_2014_2017(
GIS_Join_Match_Code text,
Data_File_Year text,
Region_Code integer,
Division_Code integer,
State_Name text,
State_Code integer,
County_Name text,
County_Code integer,
County_Subdivision_Code integer,
Place_Code integer,
Census_Tract_Code integer,
Area_Name text,
Total integer,
Male integer,
Male_Under_5_years integer,
Male_5_to_9_years integer,
Male_10_to_14_years integer,
Male_15_to_17_years integer,
Male_18_and_19_years integer,
Male_20_years integer,
Male_21_years  integer,
Male_22_to_24_years integer,
Male_25_to_29_years integer,
Male_30_to_34_years integer,
Male_35_to_39_years integer,
Male_40_to_44_years integer,
Male_45_to_49_years integer,
Male_50_to_54_years integer,
Male_55_to_59_years integer,
Male_60_and_61_years integer,
Male_62_to_64_years integer,
Male_65_and_66_years integer,
Male_67_to_69_years integer,
Male_70_to_74_years integer,
Male_75_to_79_years integer,
Male_80_to_84_years integer,
Male_85_years_and_over integer,
Female integer,
Female_Under_5_years integer,
Female_5_to_9_years integer,
Female_10_to_14_years integer,
Female_15_to_17_years integer,
Female_18_and_19_years integer,
Female_20_years integer,
Female_21_years integer,
Female_22_to_24_years integer,
Female_25_to_29_years integer,
Female_30_to_34_years integer,
Female_35_to_39_years integer,
Female_40_to_44_years integer,
Female_45_to_49_years integer,
Female_50_to_54_years integer,
Female_55_to_59_years integer,
Female_60_and_61_years integer,
Female_62_to_64_years integer,
Female_65_and_66_years integer,
Female_67_to_69_years integer,
Female_70_to_74_years integer,
Female_75_to_79_years integer,
Female_80_to_84_years integer,
Female_85_years_and_over integer,
White_alone integer,
Black_or_African_American_alone  integer,
American_Indian_and_Alaska_Native_alone  integer,
Asian_alone  integer,
Native_Hawaiian_and_Other_Pacific_Islander_alone integer,
Some_other_race_alone integer,
Two_or_more_races integer,
Not_Hispanic_or_Latino  integer,
Not_Hispanic_or_Latino_White_alone  integer,
Not_Hispanic_or_Latino_Black_or_African_American_alone  integer,
Not_Hispanic_or_Latino_American_Indian_and_Alaska_Native_alone  integer,
Not_Hispanic_or_Latino_Asian_alone  integer,
Not_Hispanic_or_Latino_Native_Hawaiian_and_Other_Pacific_Islander_alone  integer,
Not_Hispanic_or_Latino_Some_other_race_alone  integer,
Not_Hispanic_or_Latino_Two_or_more_races  integer,
Hispanic_or_Latino  integer,
Hispanic_or_Latino_White_alone  integer,
Hispanic_or_Latino_Black_or_African_American_alone  integer,
Hispanic_or_Latino_American_Indian_and_Alaska_Native_alone  integer,
Hispanic_or_Latino_Asian_alone  integer,
Hispanic_or_Latino_Native_Hawaiian_and_Other_Pacific_Islander_alone  integer,
Hispanic_or_Latino_Some_other_race_alone  integer,
Hispanic_or_Latino_Two_or_more_races  integer
);

\copy us_census_tracts_2014_2017 from 'C:\git\GIS5577_week2\us_tract_2014_2018_population.csv' with header CSV;