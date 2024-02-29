% Exercise 3-4: Data Structures and Algorithms

% Knowledge base for courses
course(csen403, timing(wednesday,1), lecturer(slim,abdennadher), room(c,h14)).
course(csen401, timing(monday,1), lecturer(slim,abdennadher), room(b,h3)).

% schedule/2
schedule(RoomNumber, _) :- 
  course(_, _, _, room(_, RoomNumber)).

% busy/3
busy(RoomNumber, Day, Slot) :- 
  course(_, timing(Day, Slot), _, room(_, RoomNumber)).
