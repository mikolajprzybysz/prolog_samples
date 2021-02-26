change(l, r).
change(r, l).

%s(czlowiek,wilk,kózka,kapusta)

move(s(X,X,G,C),wolf).
move(s(X,W,X,C),goat).
move(s(X,W,G,X),cabbage).
move(s(X,W,G,C),alone).

update(s(X, X, G, C), wolf, s(Y, Y, G, C)) :- change(X,Y).
update(s(X, W, X, C), goat, s(Y, W, Y, C)) :- change(X,Y).
update(s(X, W, G, X), cabbage, s(Y, W, G, Y)) :- change(X,Y).
update(s(X, W, G, C), alone, s(Y, W, G, C)) :- change(X, Y).

notmember(S,History):-not(member(S,History)).

equal(X, X, _).
equal(X, _, X).

legal(s(F, W, G, C)) :- equal(F, G, W), equal(F, G, C).

final(s(r, r, r, r)).

solve_dfs(State, History, []) :- final(State),!.
solve_dfs(State, History, [Move|Moves]) :- move(State, Move), update(State,Move,State1), legal(State1), notmember(State1,History), solve_dfs(State1, [State1|History], Moves).


initial_state(wgc,s(l,l,l,l)).
test_dfs(Problem,Moves):- initial_state(Problem,State),solve_dfs(State,[State],Moves).
%wywolanie
%test_dfs(wgc,X).

%dept-first-search
%solve_dfs(State, History, Moves) which will be true if Moves
%is a sequence of moves leading from State to the goal configuration
%that does not use any moves in History (no loops)
