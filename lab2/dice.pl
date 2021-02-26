%write a program in prolog for finding all possible outcomes in the dice tossing such thaht the sum is %equal perscribed number N
%dice3(X,Y,Z,5).

wynik(1).
wynik(2).
wynik(3).
wynik(4).
wynik(5).
wynik(6).






dice(X,Y,Z,N):-wynik(X),wynik(Y),wynik(Z), N is X+Y+Z.% wszystkie mo¿liwe wyniki które daj¹ w sumie N

