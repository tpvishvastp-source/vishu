{{ config(materialized='table') }}

with hosts as (
    select * from {{ ref('stg_hosts') }}
),

listings as (
    select * from {{ ref('stg_listings') }}
)

select
    l.listing_id,
    l.listing_name,
    h.host_id,
    h.host_name,
    h.is_superhost
from listings l
left join hosts h on l.host_id = h.host_id 