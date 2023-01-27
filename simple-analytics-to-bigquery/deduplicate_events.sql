CREATE
OR REPLACE TABLE `simple_analytics`.`simple_analytics_events` AS
SELECT
    *
FROM
    `simple_analytics`.`simple_analytics_events`
WHERE
    _cq_sync_time = (
    SELECT
    max(_cq_sync_time)
    FROM
    `simple_analytics`.`simple_analytics_events`
    );
