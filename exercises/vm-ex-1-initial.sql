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
-- MAGIC ### Task 1: Convert production_countries column into array
-- MAGIC (Use the movies data to see the JSON object structure of production_countries and spoken_languages)

-- COMMAND ----------

CREATE OR REPLACE TEMP VIEW movies_data_clean as
SELECT 
movie_id, title,
from_json(production_countries, 'array<_ _ _ _<_ _ _ _:string, name:string>>') as production_countries,
_ _ _ _(spoken_languages, '_ _ _ _ _') as spoken_languages
FROM default.movies_data;

DESCRIBE movies_data_clean;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Task 2: Convert production_countries column into array

-- COMMAND ----------

SELECT movie_id, title,
production_countries._ _ _ _ as country_list,
_ _ _ _ _ as language_list
FROM movies_data_clean
