d(2, 1).
d(2, -1).
d(-2, 1).
d(-2, -1).

d1(X, Y) :- d(X, Y).
d1(X, Y) :- d(Y, X).

inboard(P) :- P > 0, P < 9.

knight(X1, Y1, X2, Y2) :- inboard(X1), inboard(Y1), d1(DX, DY), X2 is X1 + DX, Y2 is Y1 + DY, inboard(X2), inboard(Y2).

knightpath( [p(X,Y)] ) :- inboard(X), inboard(Y).
knightpath( [p(X1,Y1),p(X2, Y2)|S] ) :- knight(X1, Y1, X2, Y2), knightpath( [p(X2, Y2)|S] ).
%knightpath([p(1,2),X,Y]).
