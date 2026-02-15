
{{
  config(
    materialized = 'incremental',
    key = 'BOOKING_ID'
    )
}}

SELECT 
    BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    {{multiply_with_precision('NIGHTS_BOOKED','BOOKING_AMOUNT')}} AS total_booking_amount,
    CLEANING_FEE,
    SERVICE_FEE,
    BOOKING_STATUS,
    CREATED_AT
FROM {{ ref('bronze_bookings') }}