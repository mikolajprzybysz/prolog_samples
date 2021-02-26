concat1([],L2,L2).
concat1([Head|Tail],L2,[Head|L3]):- concat1(Tail,L2,L3).

reverse([],[]).
reverse([Head|Tail],L2):- reverse(Tail,L1),concat1(L1,[Head],L2).

palindrome2(X):-reverse(X,X).
%palindrome2([b,a,b]).

%without reverse
palindrome([]).
palindrome([X]).
palindrome([Head|Tail]):-concat1(List,[Head],Tail),palindrome(List).
