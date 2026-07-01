{{
  config(
     materialized = 'table',
     schema = 'smartphones',
    )
}}

SELECT DISTINCT
    brand_name
FROM {{ ref('stg__smartphones') }}
ORDER BY brand_name