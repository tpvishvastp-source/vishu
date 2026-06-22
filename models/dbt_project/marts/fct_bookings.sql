{{ config(materialized='table') }}

with bookings as (
    select * from {{ ref('stg_bookings') }}
),

listings as (
    select * from {{ ref('stg_listings') }}
)

select
    b.booking_id,
    b.listing_id,
    b.guest_id,
    b.start_date,
    b.end_date,
    b.total_price,
    l.price_per_night
from bookings b
left join listings l on b.listing_id = l.listing_id 