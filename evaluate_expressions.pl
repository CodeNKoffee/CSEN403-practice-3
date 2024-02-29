% Exercise 3-7: Evaluate Expressions

evaluate(plus(X, Y), Result) :- 
  evaluate(X, Xval),
  evaluate(Y, Yval),
  Result is Xval + Yval.

evaluate(minus(X, Y), Result) :- 
  evaluate(X, Xval),
  evaluate(Y, Yval),
  Result is Xval - Yval.

evaluate(times(X, Y), Result) :- 
  evaluate(X, Xval),
  evaluate(Y, Yval),
  Result is Xval * Yval.

evaluate(divide(X, Y), Result) :- 
  evaluate(X, Xval),
  evaluate(Y, Yval),
  Result is Xval / Yval.

evaluate(Number, Number) :- 
  number(Number).
