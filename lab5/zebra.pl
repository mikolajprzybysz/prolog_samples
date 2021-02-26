%zebra
onstreet(X, order1(X,_,_,_,_)).
onstreet(X, order1(_,X,_,_,_)).
onstreet(X, order1(_,_,X,_,_)).
onstreet(X, order1(_,_,_,X,_)).
onstreet(X, order1(_,_,_,_,X)).

toright(X,Y, order1(X,Y,_,_,_)).
toright(X,Y, order1(_,X,Y,_,_)).
toright(X,Y, order1(_,_,X,Y,_)).
toright(X,Y, order1(_,_,_,X,Y)).

nextto(X,Y,S):- toright(X,Y,S).
nextto(X,Y,S):- toright(Y,X,S).

ismiddle(X, order1(_,_,X,_,_)).
isleft(X, order1(X,_,_,_,_)).


clue(S) :- onstreet(h(englishman,red,_,_,_), S),
   onstreet(h(spaniard,_,dog,_,_), S),
   onstreet(h(_,green,_,coffee,_), S),
   onstreet(h(ukrainian,_,_,tea,_), S),
   toright(h(_,green,_,_,_), h(_,ivory,_,_,_), S),
   onstreet(h(_,_,snails,_,tennis), S),
   onstreet(h(_,yellow,_,_,chess), S),
   ismiddle(h(_,_,_,milk,_), S),
   isleft(h(norwegian,_,_,_,_), S),
   nextto(h(_,_,_,_,rugby), h(_,_,fox,_,_), S),
   nextto(h(_,_,_,_,chess), h(_,_,horse,_,_), S),
   onstreet(h(_,_,_,orangejuice,volleyball),S),
   onstreet(h(japanese,_,_,_,go), S),
   nextto(h(norwegian,_,_,_,_), h(_,blue,_,_,_), S),
   nextto(h(_,_,_,tea,_), h(_,_,_,milo,_), S).


%clue(S), onstreet(h(N,_,zebra,_,_), S).
