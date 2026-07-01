{{
  config(
     materialized = 'table',
     schema = 'smartphones',
    )
}}

SELECT *
FROM {{ ref('int__smartphones_combination') }}
LIMIT 10
