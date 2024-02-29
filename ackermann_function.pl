% Exercise 3-2: Ackermann's Function

% ackermann/3
ackermann(0, Y, Z) :- 
  Z is Y + 1.

ackermann(X, 0, Z) :- 
  X > 0, 
  X1 is X - 1,
  ackermann(X1, 1, Z).

ackermann(X, Y, Z) :- 
  X > 0,
  Y > 0, 
  X1 is X - 1, 
  Y1 is Y - 1, 
  ackermann(X, Y1, Z1), 
  ackermann(X1, Z1, Z).

