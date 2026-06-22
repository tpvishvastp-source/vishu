with source as (
    select * from {{ source('raw_data', 'bookings') }}
)

select
    id as booking_id,
    listing_id,
    guest_id,
    start_date,
    end_date,
    total_price
from source 