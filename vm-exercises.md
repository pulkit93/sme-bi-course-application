# Virtual Machine (VM) Exercises

## :information_source: Read this before getting started
- The two exercises should not replicate the exact actions shown in your screencast. The goal of exercises is for learners to apply what was learned in the screencasts to new problems or situations. This is best pedagogical practice for retaining and building skills. For example, this can be done by using another dataset between screencasts and exercises or focusing on a different portion of the dataset.
- Power BI / Tableau specific: We can only run free versions of BI software in our virtual machine exercises. In the case of Power BI, make sure the exercises can run on [Power BI Desktop](https://powerbi.microsoft.com/en-us/desktop/) without any additional paid products. 
- Unsure what the scope of an exercise should be? Here's an [example](https://campus.datacamp.com/courses/introduction-to-power-bi/getting-started-with-power-bi?ex=14) from Introduction to Power BI. The first chapter of most DataCamp courses are free, so take a look at our [BI courses](https://learn.datacamp.com/courses?technologies=Tableau&technologies=Power%20BI) to get a feel for how we assess and guide learners.

## 1st VM Exercise

#### Dataset

- [ ] Add datasets used to the `datasets/` folder

#### Files

- [ ] **Initial**: vm-ex-1-initial.sql
- [ ] **Solution**: vm-ex-1-sol.sql

#### Learning Objective

*In this exercise you will learn to transform columns with nested objects like JSON strings into spark native data types like struct and array*

#### Context

The data analyst at Amazon Prime has the important task of analysing the production countries and the languages spoken in the movies. Unfortunately, this information is packed into nested columns with JSON strings. The data analyst needs your help to extract information from these complicated data fields. Perform the below steps to help your colleague

#### Steps to be executed by the student (max 6)

*Each bulleted instruction is a complete sentence that describes a specific task.*

- Step 1: Display top 100 rows from the movies_data table. Visualise the production_countries and spoken_languagues column to understand the structure of JSON object
- Step 2: transform production_countries column of movies_data into array of struct
- Step 3: transform spoken_languages column of movies_data into array of struct
- Step 4: extract the name of production countries associated with each movie into a simplified array
- Step 5: extract the language code associated with each movie into a simplified array

#### Exercise question:
*This is a question presented to learners to check if the steps above were properly completed. It can be a multiple choice question or a question with a 1-3 word answer. It is often not possible to check if all the steps are completed, in this case; the priority is to check that the learner meets the learning objective.*

- Question 1: Have you used the from_json() function and its arguments correctly?
- Question 2: Hove you mentioned the JSON key correctly in the schema argument
- Question 3: Are you mentioning the key associated with language name instead of language code?
#### End goal:

*No visualisation as this is a code based task*

## 2nd VM Exercise

#### Dataset

- [ ] Add datasets used to the `datasets/` folder

#### Files

- [ ] **Initial**: vm-ex-2-initial.sql
- [ ] **Solution**: vm-ex-2-sol.sql

#### Learning Objective

*In this exercise you will learn to expand array fields across multiple rows and flatten complex array structures*

#### Context

Amazon Prime wants to expand their offerings into regions like Bahamas and Congo. For this, they need to analyse the movies produced in these regions along with the languages spoken in those movies. Your data analyst colleague is unavailable due to a family emergency and the team needs someone who is adept at handling complex nested structures to provide these valuable insights. Perform the below tasks to help the team.
#### Steps to be executed by the student (max 6)

- Step 1: Expand the country_list array with every country in an individual row
- Step 2: Filter movies that were produced in Bahamas and Congo
- Step 3: Collect and aggregate the language codes associated with various movies into a single row for each production country
- Step 4: Simplfy and flatten the array structure associated with country codes. Remove duplicate language codes from the language list if any.

#### Exercise question:
- Question 1: Have you used the explode function correctly?
- Question 2: Do you recall the keyword using in SparkSQL to filter rows based on a condition?
- Question 3: Have you used the collect_set() function to aggregate list of language codes?
- Question 4: It seems you haven't removed the duplicates values from array of language codes. Have you used the array_distinct() function correctly?

#### End goal:

*No visualisation as this is a code based task*

