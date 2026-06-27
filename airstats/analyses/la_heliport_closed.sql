-- analyses/la_heliport_closed.sql
SELECT
    airport_ident,
    airport_type,
    dbt_valid_from,
    dbt_valid_to
FROM {{ ref('scd_silver_airports') }}
WHERE airport_ident = '01CN'