with teams as (
    select * 
    from {{ref('Create_teams')}}
),
team_locations as (
    select * 
    from {{ref('nba_teams')}}
),
final as(

    Select 
    t.team, 
    tl.city,
    tl.state,
    t.team = '{{ var("current_champion") }}' as is_Champion
    from teams t Left join 
    team_locations tl on t.TEAM = tl.Name 

)
select * 
from final