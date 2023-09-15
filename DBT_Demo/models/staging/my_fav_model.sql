{{ config(materialized='table') }}

WITH source_data as (
    SELECT 
        1 as id, 
        'mike' as name, 
        '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}' as created_at
    UNION ALL
    SELECT 
        2 as id, 
        'Nike' as name, 
        '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}' as created_at
    UNION ALL
    SELECT 
        3 as id, 
        'Sike' as name, 
        '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}' as created_at
    UNION ALL
    SELECT 
        4 as id, 
        'Bike' as name, 
        '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}' as created_at
)

SELECT * FROM source_data