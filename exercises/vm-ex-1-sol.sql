-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Initialisation
-- MAGIC
-- MAGIC - database name: default
-- MAGIC - table name: movies_data

-- COMMAND ----------

select *
from default.movies_data

-- COMMAND ----------

-- MAGIC %md
-- MAGIC # Correct Answers

-- COMMAND ----------

-- Task 1

CREATE OR REPLACE TEMP VIEW movies_data_clean as
SELECT 
movie_id, title,
from_json(production_countries, 'array<struct<iso_3166_1:string, name:string>>') as production_countries,
from_json(spoken_languages, 'array<struct<iso_639_1:string, name:string>>') as spoken_languages
FROM default.movies_data;

DESCRIBE movies_data_clean;

-- COMMAND ----------

-- Task 2
SELECT movie_id, title,
production_countries.name as country_list,
spoken_languages.iso_639_1 as language_list
FROM movies_data_clean

