{{ config(materialized = 'table',  tags = ["special"])}}

with source_data as (Select 
PARSE_JSON('{"artist_name":"Eminem", "birth_name": "marshall", "city": "decatur","age": "12"}') as Artist_data,  '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}' as created_at
union all 
Select PARSE_JSON('{"artist_name":"Eminaminam", "birth_name": "marsh", "city": "tuturiya","age": "13"}') as Artist_data,  '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}' as created_at
union all 
Select PARSE_JSON('{"artist_name":"dolan trump", "birth_name": "bumbelclot", "city": "Lko","age": "14"}') as Artist_data,  '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}'as created_at
union all 
Select PARSE_JSON('{"artist_name":"Gary", "birth_name": "Ola", "city": "tincan","age": "15"}') as Artist_data,  '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}'as created_at
union all 
Select PARSE_JSON('{"artist_name":"Mary", "birth_name": "amigo", "city": "Canteen","age": "112"}') as Artist_data,  '{{ dbt_utils.pretty_time(format="%Y-%m-%d %H:%M:%S") }}' as created_at
)select * from source_data 