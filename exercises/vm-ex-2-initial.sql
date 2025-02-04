-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Initialisation
-- MAGIC (to be used for setting up the task)

-- COMMAND ----------

CREATE OR REPLACE TEMP VIEW movies_data_clean as
SELECT 
movie_id, title,
from_json(production_countries, 'array<struct<iso_3166_1:string, name:string>>') as production_countries,
from_json(spoken_languages, 'array<struct<iso_639_1:string, name:string>>') as spoken_languages
FROM default.movies_data;

DESCRIBE movies_data_clean;

-- COMMAND ----------

CREATE OR REPLACE TEMP VIEW movies_v2 as
SELECT movie_id, title,
production_countries.name as country_list,
spoken_languages.iso_639_1 as language_list
FROM movies_data_clean;

select *
from movies_v2;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC The above data is the output of the previous exercise.
-- MAGIC
-- MAGIC Now we want to analyse the various countries where movies with the Chinese language( code: zh) were produced

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Task 1: Expand the country with 1 value in each row

-- COMMAND ----------

create or replace temp view movies_v3 as
SELECT movie_id, title, language_list,
_ _ _ _(country_list) as countries
from movies_v2;

select *
from movies_v3;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Task 3: find details of movies that were made in Bahamas and Congo

-- COMMAND ----------

select *
from movies_v3
_ _ _ _ countries in ('Bahamas', 'Congo')

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Task 3: Create a single row of languages used in  movies produced in Bahamas and Congo

-- COMMAND ----------

create or replace temp view movies_v4 as
select
countries, _ _ _ _(language_list) as languages
from movies_v3
where countries in ('Bahamas', 'Congo')
group by _ _ _ _;

select *
from movies_v4;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Task 4: Simplify the list structure while removing duplicate language codes

-- COMMAND ----------

select
countries, _ _ _ _(_ _ _ _(languages)) as languages
from movies_v4

