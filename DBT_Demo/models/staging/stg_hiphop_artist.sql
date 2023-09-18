SELECT distinct FL.key as column_name
FROM {{source('artist_source', 'artist_data')}} as t,
LATERAL FLATTEN(input => t.artist_data) AS FL