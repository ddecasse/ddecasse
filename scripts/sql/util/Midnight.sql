https://stackoverflow.com/questions/8555316/rounding-sql-datetime-to-midnight

/*
Here is the simplest thing I've found

-- Midnight floor of current date

SELECT Convert(DateTime, DATEDIFF(DAY, 0, GETDATE()))
The DATEDIFF returns the integer number of days before or since 1900-1-1, and the Convert Datetime obligingly brings it back to that date at midnight.

Since DateDiff returns an integer you can use add or subtract days to get the right offset.
*/
Declare @dayOffset as int 
Set @dayOffset = 0 
SELECT Convert(DateTime, DATEDIFF(DAY, 0, GETDATE()) + @dayOffset)

--SELECT DATEDIFF(DAY,0,GETDATE())



