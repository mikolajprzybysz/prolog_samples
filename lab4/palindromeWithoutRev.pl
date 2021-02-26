palindrome([]).
palindrome([X]).
palindrome([Head|Tail]):-concat1(List,[Head],Tail),palindrome(List).
