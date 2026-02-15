
{{
  config(
    materialized = 'incremental',
    key = 'LISTING_ID'
    )
}}

SELECT 
    LISTING_ID,
    HOST_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    COUNTRY,
    ACCOMMODATES,
    BEDROOMS,
    BATHROOMS,
    PRICE_PER_NIGHT,
    CREATED_AT,
    {{tag('PRICE_PER_NIGHT')}} AS price_per_night_tag_type
FROM {{ ref('bronze_listings') }}