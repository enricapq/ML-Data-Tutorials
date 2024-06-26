WITH raw_hosts AS (
    SELECT * FROM SELECT * FROM {{ source('airbnb', 'hosts')}}
)

SELECT
    ID AS host_id, 
    NAME AS host_name, 
    is_superhost, 
    created_at, 
    updated_at
FROM
    raw_hosts
