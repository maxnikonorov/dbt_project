{{
  config(
     materialized = 'table',
     schema = 'smartphones',
    )
}}

SELECT
    processor_brand,
    SUM(combination_count) AS total_processors
FROM {{ ref('int__smartphones_combination') }}
GROUP BY processor_brand
ORDER BY total_processors DESC
LIMIT 10
