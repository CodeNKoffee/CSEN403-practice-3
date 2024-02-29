% Exercise 3-6: Successor Notation

s(0).
s(s(X)) :-
	s(X).

% a) sum(X, Y, Z)
sum(0, Y, Y).
sum(s(X), Y, s(Z)) :-
	sum(X, Y, Z).

% b) subtract(X, Y, Z)
subtract(X, 0, X).
subtract(s(X), s(Y), Z) :-
	subtract(X, Y, Z).

% c) mult(X, Y, Z) (Without using *)
mult(0, _, 0).
mult(s(X), Y, Z) :-
	mult(X, Y, W), 
	sum(W, Y, Z).
