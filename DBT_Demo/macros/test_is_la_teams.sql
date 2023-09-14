{% test is_la_teams(model, column_name) %}

with validation as (

    select
        {{ column_name }} as city,
        team
    from {{ model }}

),

validation_errors as (

    select
        city

    from validation
    where city = ' Los angeles' 
        and team not in('Lakers','Clippers')

)

select count(*)
from validation_errors

{% endtest %}