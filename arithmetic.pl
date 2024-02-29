% Exercise 3-3: Arithmetic

% Facts for each month of the year
month(1, january, 31).
month(2, february, 28).
month(3, march, 31).
month(4, april, 30).
month(5, may, 31).
month(6, june, 30).
month(7, july, 31).
month(8, august, 31).
month(9, september, 30).
month(10, october, 31).
month(11, november, 30).
month(12, december, 31).

% Rule to calculate days left in a month
days_left(Month, Day, DaysLeft) :- month(Month, _, TotalDays), DaysLeft is TotalDays - Day.