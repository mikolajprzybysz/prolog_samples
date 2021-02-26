Kod:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Monkey                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

canget1(state(_, _, _, has), []).
canget1(S1, [A|M]) :- move(S1, M, S2), canget1(S2, A).