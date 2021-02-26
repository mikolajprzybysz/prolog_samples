% C-current position e - place where the counter moves
%direct corner moves
correct(s(C, e, X3, X4, X5, X6, X7), s(e, C, X3, X4, X5, X6, X7), C, 1, 2).
correct(s(e, C, X3, X4, X5, X6, X7), s(C, e, X3, X4, X5, X6, X7), C, 2, 1).
correct(s(C, X2, e, X4, X5, X6, X7), s(e, X2, C, X4, X5, X6, X7), C, 1, 3).
correct(s(e, X2, C, X4, X5, X6, X7), s(C, X2, e, X4, X5, X6, X7), C, 3, 1).
correct(s(X1, X2, X3, X4, e, X6, C), s(X1, X2, X3, X4, C, X6, e), C, 7, 5).
correct(s(X1, X2, X3, X4, C, X6, e), s(X1, X2, X3, X4, e, X6, C), C, 5, 7).
correct(s(X1, X2, X3, X4, X5, e, C), s(X1, X2, X3, X4, X5, C, e), C, 7, 6).
correct(s(X1, X2, X3, X4, X5, C, e), s(X1, X2, X3, X4, X5, e, C), C, 6, 7).
%direct center moves
correct(s(X1, X2, X3, C, X5, e, X7), s(X1, X2, X3, e, X5, C, X7), C, 4, 6).
correct(s(X1, X2, X3, e, X5, C, X7), s(X1, X2, X3, C, X5, e, X7), C, 6, 4).
correct(s(X1, X2, X3, C, e, X6, X7), s(X1, X2, X3, e, C, X6, X7), C, 4, 5).
correct(s(X1, X2, X3, e, C, X6, X7), s(X1, X2, X3, C, e, X6, X7), C, 5, 4).
correct(s(X1, X2, e, C, X5, X6, X7), s(X1, X2, C, e, X5, X6, X7), C, 4, 3).
correct(s(X1, X2, C, e, X5, X6, X7), s(X1, X2, e, C, X5, X6, X7), C, 3, 4).
correct(s(X1, e, X3, C, X5, X6, X7), s(X1, C, X3, e, X5, X6, X7), C, 4, 2).
correct(s(X1, C, X3, e, X5, X6, X7), s(X1, e, X3, C, X5, X6, X7), C, 2, 4).
%jumps
correct(s(X1, C, X3, X4, X5, e, X7), s(X1, e, X3, X4, X5, C, X7), C, 2, 6).
correct(s(X1, e, X3, X4, X5, C, X7), s(X1, C, X3, X4, X5, e, X7), C, 6, 2).
correct(s(X1, X2, C, X4, e, X6, X7), s(X1, X2, e, X4, C, X6, X7), C, 3, 5).
correct(s(X1, X2, e, X4, C, X6, X7), s(X1, X2, C, X4, e, X6, X7), C, 5, 3).

next(b, w).
next(w, b).

play(_, s(X1, X2, X3, X4, X5, X6, X7), s(X1, X2, X3, X4, X5, X6, X7), _, _, _).
play(C, s(X1, X2, X3, X4, X5, X6, X7), s(Y1, Y2, Y3, Y4, Y5, Y6, Y7), S, [s(X1, X2, X3, X4, X5, X6, X7)|T], [[C, N, M]|U]) :- correct(s(X1, X2, X3, X4, X5, X6,X7),      s(Z1, Z2, Z3, Z4, Z5, Z6, Z7),
      C, N, M),
   not(member(s(Z1, Z2, Z3, Z4, Z5, Z6, Z7),
         [s(X1, X2, X3, X4, X5, X6, X7)|S])),
   next(C,D),
   play(D,
        s(Z1, Z2, Z3, Z4, Z5, Z6, Z7),
        s(Y1, Y2, Y3, Y4, Y5, Y6, Y7),
        [s(X1, X2, X3, X4, X5, X6, X7)|S],
        T,
        U).
%play(w,s(w,w,w,e,b,b,b), s(b,b,b,e,w,w,w), [], S,T).
