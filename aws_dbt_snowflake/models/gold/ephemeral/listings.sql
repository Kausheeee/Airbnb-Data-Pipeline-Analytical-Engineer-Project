{{
  config(
    materialized = 'ephemeral',
    )
}}


SELECT 
   listing_id,
    property_type,
    room_type,
    city,
    country,
    listing_created_at
FROM {{ ref('obt') }}


