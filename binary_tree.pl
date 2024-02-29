% Exercise 3-5: Ackermann's Function

depth(nil, 0).
depth(bt(_, Left, Right), Depth) :-
  depth(Left, LeftDepth),
  depth(Right, RightDepth),
  Depth is max(LeftDepth, RightDepth) + 1.
