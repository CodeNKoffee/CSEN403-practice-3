% Exercise 3-4: Data Structures and Algorithms
% TEST: ?- schedule(h14, X). and the result is X = csen403.
% TEST: ?- busy(h14, wednesday, 1). and the result is true.

% Knowledge base for courses
course(csen403, timing(wednesday,1), lecturer(slim,abdennadher), room(c,h14)).
course(csen401, timing(monday,1), lecturer(slim,abdennadher), room(b,h3)).

% schedule/2

schedule(RoomNumber, _) :-
	course(_, _, _, 
		room(_, RoomNumber)).

% busy/3

busy(RoomNumber, Day, Slot) :-
	course(_, 
		timing(Day, Slot), _, 
		room(_, RoomNumber)).


% EXPLANATION:

% We have a list of courses. Each course has a name (like csen403), a time when it happens (like wednesday at 1), a teacher (like Mr. Slim Abdennadher), and a location (like room h14 in building c).
% The schedule(RoomNumber, _) is like asking: “What course is happening in room h14?” When we ask Prolog ?- schedule(h14, X)., it checks the list of courses and tells us that the course csen403 is happening in room h14.
% The busy(RoomNumber, Day, Slot) is like asking: “Is room h14 busy on wednesday at 1?” When we ask Prolog ?- busy(h14, wednesday, 1)., it checks the list of courses and tells us true, which means yes, the room is busy because the course csen403 is happening at that time.

