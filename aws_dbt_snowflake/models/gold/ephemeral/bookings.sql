{{
  config(
    materialized = 'ephemeral',
    )
}}


SELECT 
    booking_id,
    booking_date,
    booking_status,
    created_at AS booking_created_at
FROM {{ ref('obt') }}


