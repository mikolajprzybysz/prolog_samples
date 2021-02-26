isnumber(zero).
isnumber(s(X)) :- isnumber(X).

add(zero,X,X) :- isnumber(X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

times(zero,X,zero):-isnumber(X).
times(s(X),Y,Z):-times(X,Y,Q),add(Y,Q,Z).

%exp(zero,X).
%exp(s(zero),X).

exp(zero,Y):- Y is 1.
exp(s(zero),X):- X is e.
exp(s(X),Y):-exp(X,S), Y is S*e.


dot(A, B, N) :- dotaux(A, B, 0, N).
dotaux([], [], V, V).
dotaux([A|As],[B|Bs],N,Z) :- N1 is N + (A * B), dotaux(As, Bs, N1, Z).
%dot([1,2,3],[1,2,3],X).
