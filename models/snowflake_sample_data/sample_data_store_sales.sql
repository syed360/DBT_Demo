with source_store_sales as(
select * from {{source('snowflake_sample_datas', 'store_sales')}} --database and schema comes from schema.yml named snowflake_sample_datas 
), 

final as( 
    select * from source_store_sales
)
select * from final