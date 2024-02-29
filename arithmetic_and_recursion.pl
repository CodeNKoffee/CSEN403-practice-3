% Exercise 3-1: Arithmetic and Recursion

% a) maximum/3
maximum(A, B, C) :- 
  C is max(A, B).


% b) seq/3
seq(First, Last, First) :- 
  First =< Last.

seq(First, Last, N) :- 
  First < Last, 
  Next is First + 1, 
  seq(Next, Last, N).


% c) mult/3
mult(_, 0, 0).
mult(X, Y, Z) :- 
  Y > 0, 
  Y1 is Y - 1, 
  mult(X, Y1, Z1), 
  Z is Z1 + X.


% d) expo/3
expo(_, 0, 1).
expo(X, Y, Z) :- 
  Y > 0, 
  Y1 is Y - 1, 
  expo(X, Y1, Z1), 
  mult(X, Z1, Z).
