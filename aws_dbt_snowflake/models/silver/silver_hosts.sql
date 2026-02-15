
{{
  config(
    materialized = 'incremental',
    unique_key = 'HOST_ID'
    )
}}

SELECT 
    HOST_ID,
    REPLACE(HOST_NAME,' ','_') AS HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST, 
    RESPONSE_RATE,
    CREATED_AT,
    CASE 
        WHEN RESPONSE_RATE > 95 THEN 'Good'
        WHEN RESPONSE_RATE > 80 THEN 'Medium'
        ELSE 'Low'
    END AS RESPONSE_RATE_QUALITY
FROM {{ ref('bronze_hosts') }} 