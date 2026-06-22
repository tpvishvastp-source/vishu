with source as (
    select * from {{ source('staging', 'bookings') }}
)

select
    booking_id,
    listing_id,
    null as guest_id,
    booking_date as start_date,
    dateadd(day, nights_booked, booking_date) as end_date,
    booking_amount as total_price
from source 

