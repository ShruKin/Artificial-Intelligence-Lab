gcd1(0,X,X):- X > 0, !.
gcd1(X,Y,Z):- X>=Y, X1 is X -Y, gcd1(X1,Y,Z).
gcd1(X,Y,Z):- X<Y, X1 is Y-X, gcd1(X1,X,Z).
gcdL([H,H1|T],Z):-gcd1(H,H1,X),gcdL([X|T],Z).
gcdL([H1,H2],Z):-gcd1(H1,H2,Z).
