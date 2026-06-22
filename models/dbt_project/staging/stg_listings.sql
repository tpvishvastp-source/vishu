with source as (
    select * from {{ source('raw_data', 'listings') }}
)

select
    id as listing_id,
    name as listing_name,
    host_id,
    price as price_per_night,
    created_at
from source 