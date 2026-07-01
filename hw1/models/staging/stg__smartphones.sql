{{
  config(
    materialized = 'view',
    schema = 'smartphones'
  )
}}

SELECT
    "brand_name",
    "model",
    "price",
    "processor_brand",
    "num_cores",
    "processor_speed",
    "battery_capacity"
FROM {{ source('seed_data', 'smartphone_cleaned_v5') }}
