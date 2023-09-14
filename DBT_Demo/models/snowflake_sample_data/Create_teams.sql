with source_data as (Select 'Lakers' as TEAM
union all 
select 'Clippers' as TEAM
union all
select '76ers' as TEAM
union all
select 'heat' as TEAM) 
select * from source_data 
