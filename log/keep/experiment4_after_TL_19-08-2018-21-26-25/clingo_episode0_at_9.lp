1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((2, 6)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 6)).
%AAA
state_at((4, 7), 9).
%BBB
%CCC
time(9..250).
%DDD
%ANSWER SETS

%state_at((4,7),9)
%state_at((5,7),10)
%action(right,9)
%action(right,10)
%state_at((6,7),11)
%action(right,11)
%state_at((7,7),12)
%action(right,12)
%state_at((8,7),13)
%action(right,13)
%state_at((9,7),14)
%action(right,14)
%state_at((10,7),15)
%action(right,15)
%state_at((11,7),16)
%action(right,16)
%state_at((12,7),17)
%action(right,17)
%state_at((13,7),18)
%action(right,18)
%state_at((14,7),19)
%action(right,19)
%state_at((15,7),20)
%action(right,20)
%state_at((16,7),21)
%action(up,21)
%state_at((16,6),22)
%action(up,22)
%state_at((16,5),23)
%action(up,23)
%state_at((16,4),24)
%action(up,24)
%state_at((16,3),25)
%action(up,25)
%state_at((16,2),26)
%action(up,26)
%state_at((16,1),27)
