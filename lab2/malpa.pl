move(
   state(middle, onbox, middle, hasnot),
   grasp,
   state(middle, onbox, middle, has)
).

move(
   state(P, onfloor, P, X),
   climb,
   state(P, onbox, P, X)
).

move(
   state(P1, onfloor, P1, X),
   push(P1, P2),
   state(P2, onfloor, P2, X)
).

move(
   state(P1, onfloor, PB, X),
   walk(P1, P2),
   state(P2, onfloor, PB, X)
).

canget(state(A, B, C, has)).
canget(S2) :- move(S2, M, S1), canget(S1).

%canget(state(atdoor,onfloor,atwindow,hasnot)).
%canget(state(middle, onbox, middle, hasnot).


%move - consists of moving one of the horizontally or vertically
%adjacent digits into the empty square
%Aim - perform a sequence of such moves to go from initial
%configuration to the goal configuration

%move(State, Move, State1)
%true if there is a move Move that takes one from State to State1

%polozenie malpy, czy na pudle, polozenie pudla, czy ma banana
