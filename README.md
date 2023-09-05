# Crowdfunding_ETL
Mini-project2
For the ETL mini project, we have worked with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, we create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, we have uploaded the CSV file data into a Postgres database.
Setting Up GitHub:
1)	Created and renamed the ETL_Mini_Project_starter_code.ipynb as our names initial such as (MI and El) Mohammad Islam and Erjola Luka.

2)	Cloned the repository to our local desktop

3)	Added   this Jupyter notebook file and the Resources folder containing the crowdfunding.xlsx and the contacts.xlsx files to our repository.

Create the Category and Subcategory Dataframes:
1)	imported the Excel file present in the resources folder and created a DataFrame in pandas.


 ![panda1](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/da4f77c2-452b-482a-897d-753cbcb4ab97)


2)	Read the datatypes of the data frame created
 ![2](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/d713bb3e-79ce-4b74-b9fc-8b925fce6b92)


3)	A "category_id" column that had entries going sequentially from "cat1" to "catn", where n was the number of unique categories
4)	A "category" column that contained only the category titles
5)	The following image shows this category DataFrame
![3](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/b82f64f5-6d70-4b05-8630-25896a88f2b3)

  ![4](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/9863dd0c-2dd7-4664-aceb-32b70032d879)

7)	Exported the category DataFrame as category.csv and saved it to the GitHub repository.
8)	A "subcategory_id" column that had entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
9)	A "subcategory" column that contained only the subcategory titles
    

11)	The following image shows this subcategory DataFrame:
 ![5](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/da05bc26-b3e9-423b-b8bd-b7fbe121721a)



10)Exported the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.





**Campaign DataFrame**
1.	Extracted and transformed the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
o	The "cf_id" column
o	The "contact_id" column
o	The "company_name" column
o	The "blurb" column, renamed to "description"
![6](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/0f08b485-6426-40a0-a752-446ffb243455)

 
o	The "goal" column, converted to the float data type
o	The "pledged" column, converted to the float data type
 ![7](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/85f39d90-69da-40db-bf73-ee09b6631dd5)


o	The "outcome" column
o	The "backers_count" column
o	The "country" column
o	The "currency" column
o	The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the DateTime format
o	The "deadline" column, renamed to "end_date" and with the UTC times converted to the DateTime format
 ![8](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/637bed52-c646-4635-baef-9a62f011dbf2)

o	The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
o	The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
 ![9](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/16b7ab32-307c-4a07-9964-118d641fcf6b)

o	The following image shows this campaign DataFrame:

![10](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/2966a5e3-6fbc-45a5-b971-757eeda74ea0)

Exported the campaign DataFrame as campaign.csv and saved it to our GitHub repository.





**Create the Contacts DataFrame**
1.	Used both two options for extracting and transforming the data from the contacts.xlsx Excel data:
   ![11](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/62f14914-a519-4656-9d2c-b5f338308e45)

 o	Option 1:  Python dictionary methods.
  	Option 2: Regular expressions.



2.	For Option 1,  the following steps were taken:
o	Imported the contacts.xlsx file into a DataFrame.
o	Iterated through the DataFrame, converting each row to a dictionary.
 ![13](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/2a1a1050-4808-4b74-bfd4-a48a17f4c1a2)

o	Iterated through each dictionary, doing the following:
	Extracted the dictionary values from the keys by using a Python list comprehension.
	Added the values for each row to a new list.
o	Created a new data frame that contains the extracted data.
 
![14](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/d14e2407-d531-4f2d-a6b8-03c856beb48f)


o	Split each "name" column value into a first and last name, and place each in a new column.
o	Cleaned and exported the DataFrame as contacts.csv and saved it to the GitHub repository.
 ![15](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/230a7440-1987-43c6-84c3-23612ec42832)

3.	For Option 2, complete the following steps:
o	Imported the contacts.xlsx file into a Data Frame.
![16](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/2fb40f72-d8ff-45f1-9764-6cb8cd8deaf4)


 
o	Extracted the "contact_id", "name", and "email" columns by using regular expressions.
 ![18](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/4b4d2e10-af54-41bd-a64d-781901b43853)
![19](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/b3f0709b-9305-43bd-8d88-811780debfaf)

o	Created a new data frame with the extracted data.
![21](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/bbc22d86-0250-480c-bcd3-77165042f2e3)

o	Converted the "contact_id" column to the integer type.
![25](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/d5d49012-266e-4ef2-93ac-4650788962e5)


o	Split each "name" column value into a first and a last name, and place each in a new column.

![26](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/f9544864-e490-4d2f-9864-1288cfaff7bc)


o	Cleaned and then exported the DataFrame as contacts.csv and saved it to GitHub repository.
 

 ![24](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/4b40622f-fc0d-4b86-9b63-45b2d692cb6c)

 
**Creating Database:**
1.	Inspected the four CSV files, and then sketched an ERD of the tables.
   
 

![image](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/d3d2834f-c799-4817-a12f-81c54fb4e0c1)





3.	Used the information from the ERD to create a table schema for each CSV file.
4.	Saved the database schema as a Postgres file named crowdfunding_db_schema.sql, and saved it to the GitHub repository.
5.	Create a new Postgres database, named crowdfunding_db.
6.	Used the database schema, and created the tables in the correct order to handle the foreign keys.
7.	Verified the table creation by running a SELECT statement for each table.
8.	Imported each CSV file into its corresponding SQL table.
9.	Verified that each table has the correct data by running a SELECT statement for each.
 
![22](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/08ccb9ff-954a-421e-a941-67f01d11bcb8)
![23](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/ae21a85e-6b91-4a59-abc8-2b44d4d2dd9a)

 **Results:**
***Contact Data Frame:**

 ![27](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/ba98037c-963c-4c2e-9e00-5b9c324d2189)
 
**Category Data Frame:**

![28](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/12311e8e-293f-4614-9f69-1f0c1d43e207)

**Sub_Category Data Frame:**

![29](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/bd3ee124-e5b2-44e5-badd-c8c56642194b)

**Campaign Data Frame:**

![30](https://github.com/islam12k/Crowdfunding_ETL/assets/135572988/64ea55d0-c753-4bd9-9c73-b2affcaf2cf4)



 


