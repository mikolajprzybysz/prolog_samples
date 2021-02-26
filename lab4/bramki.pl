and1(0,0,0).
and1(0,1,0).
and1(1,0,0).
and1(1,1,1).

not1(0,1).
not1(1,0).

circuit1(X,Y,Z):-and1(X,Y,Z1),not1(Z1,Z).
circuit2(X,Y,Z,V,W):-and1(X,Y,K1),and1(Z,V,K2),and1(K1,K2,K),not1(K,W).
