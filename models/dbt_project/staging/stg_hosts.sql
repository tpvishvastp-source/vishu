with source as (
    select * from {{ source('raw_data', 'hosts') }}
)

select
    id as host_id,
    name as host_name,
    is_superhost
from source 