isnumber(zero).
isnumber(s(X)) :- isnumber(X).

plus(zero,X,X) :- isnumber(X).
plus(s(X), Y, s(Z)) :- plus(X,Y,Z).

times(zero, X, zero) :- isnumber(X).
times(s(X), Y, Z) :- times(X, Y, W),plus(Y, W, Z).

rec(zero,s(s(zero))).
rec(s(zero),s(s(s(zero)))).
rec(s(s(X)),Y):-rec(s(X),Z),rec(s(X),T),times(s(s(zero)),Z,A),times(s(s(s(zero))),T,B),plus(A,B,Y).
%rec(s(zero),X).
