with source as (
    select * from {{ source('staging', 'hosts') }}
)

select
    host_id,
    host_name,
    is_superhost
from source 