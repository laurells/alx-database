-- Print the full description of the 'first_table' using INFORMATION_SCHEMA
SELECT
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    COLUMN_DEFAULT,
    EXTRA
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_NAME = 'first_table';