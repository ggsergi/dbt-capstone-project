-- tests/runway_without_airport.sql
SELECT r.runway_id, r.airport_ident
FROM {{ ref('silver_runways') }} r
LEFT JOIN {{ ref('silver_airports') }} a
    ON r.airport_ident = a.airport_ident
WHERE a.airport_ident IS NULL