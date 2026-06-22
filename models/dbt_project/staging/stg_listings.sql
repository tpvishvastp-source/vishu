with source as (
    select * from {{ source('staging', 'listings') }}
)

select
    listing_id,
    property_type || ' in ' || city as listing_name,
    host_id,
    price_per_night,
    created_at
from source 