
{{
  config(
    materialized = 'table',
    )
}}

SELECT 
    BOOKING_ID,
    LISTING_ID,
    HOST_ID
    TOTAL_BOOKING_AMOUNT,
    CLEANING_FEE,
    SERVICE_FEE,
    ACCOMMODATES,
    BEDROOMS,
    BATHROOMS,
    PRICE_PER_NIGHT,
    RESPONSE_RATE
FROM {{ ref('obt') }}
