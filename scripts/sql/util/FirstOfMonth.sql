https://stackoverflow.com/questions/1520789/how-can-i-select-the-first-day-of-a-month-in-sql

SELECT DATEADD(month, DATEDIFF(month, 0, @mydate), 0) AS StartOfMonth