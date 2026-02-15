
{{
  config(
    materialized = 'ephemeral',
    )
}}


SELECT 
    host_id,
    host_name,
    host_since,
    is_superhost,
    response_rate,
    response_rate_quality,
    hosts_created_at
FROM {{ ref('obt') }}


