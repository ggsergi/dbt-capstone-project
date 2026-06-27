-- tests/comment_future_timestamp.sql
SELECT comment_id, comment_timestamp
FROM {{ ref('silver_airport_comments') }}
WHERE comment_timestamp > CURRENT_TIMESTAMP()