# Crowdfunding_ETL
Mini-project2
For the ETL mini project, we have worked with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, we create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, we have uploaded the CSV file data into a Postgres database.
Setting Up GitHub:
1)	Created and renamed the ETL_Mini_Project_starter_code.ipynb as our names initial such as (MI and El) Mohammad Islam and Erjola Luka.

2)	Cloned the repository to our local desktop

3)	Added   this Jupyter notebook file and the Resources folder containing the crowdfunding.xlsx and the contacts.xlsx files to our repository.

Create the Category and Subcategory Dataframes:
1)	imported the Excel file present in the resources folder and created a DataFrame in pandas.


 

2)	Read the datatypes of the data frame created
 

3)	A "category_id" column that had entries going sequentially from "cat1" to "catn", where n was the number of unique categories
4)	A "category" column that contained only the category titles
5)	The following image shows this category DataFrame
  
6)	Exported the category DataFrame as category.csv and saved it to the GitHub repository.
7)	A "subcategory_id" column that had entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
8)	A "subcategory" column that contained only the subcategory titles
9)	The following image shows this subcategory DataFrame:
 


10)Exported the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.





Campaign DataFrame
1.	Extracted and transformed the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
o	The "cf_id" column
o	The "contact_id" column
o	The "company_name" column
o	The "blurb" column, renamed to "description"
 
o	The "goal" column, converted to the float data type
o	The "pledged" column, converted to the float data type
 

o	The "outcome" column
o	The "backers_count" column
o	The "country" column
o	The "currency" column
o	The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the DateTime format
o	The "deadline" column, renamed to "end_date" and with the UTC times converted to the DateTime format
 
o	The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
o	The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
 
o	The following image shows this campaign DataFrame:



 



Exported the campaign DataFrame as campaign.csv and saved it to our GitHub repository.
















Create the Contacts DataFrame
1.	Used both two options for extracting and transforming the data from the contacts.xlsx Excel data:
 
o	Option 1:  Python dictionary methods.
o	Option 2: Regular expressions.



2.	For Option 1,  the following steps were taken:
o	Imported the contacts.xlsx file into a DataFrame.
o	Iterated through the DataFrame, converting each row to a dictionary.
 
o	Iterated through each dictionary, doing the following:
	Extracted the dictionary values from the keys by using a Python list comprehension.
	Added the values for each row to a new list.
o	Created a new data frame that contains the extracted data.
 


o	Split each "name" column value into a first and last name, and place each in a new column.
o	Cleaned and exported the DataFrame as contacts.csv and saved it to the GitHub repository.
 
3.	For Option 2, complete the following steps:
o	Imported the contacts.xlsx file into a Data Frame.
 
o	Extracted the "contact_id", "name", and "email" columns by using regular expressions.
o	 
o	Created a new data frame with the extracted data.
o	Converted the "contact_id" column to the integer type.
o	Split each "name" column value into a first and a last name, and place each in a new column.
o	Cleaned and then exported the DataFrame as contacts.csv and saved it to GitHub repository.
 

 
 

















Creating Database:
1.	Inspected the four CSV files, and then sketched an ERD of the tables.
 






2.	Used the information from the ERD to create a table schema for each CSV file.
3.	Saved the database schema as a Postgres file named crowdfunding_db_schema.sql, and saved it to the GitHub repository.
4.	Create a new Postgres database, named crowdfunding_db.
5.	Used the database schema, and created the tables in the correct order to handle the foreign keys.
6.	Verified the table creation by running a SELECT statement for each table.
7.	Imported each CSV file into its corresponding SQL table.
8.	Verified that each table has the correct data by running a SELECT statement for each.
 

 
