% gcd(X, Y, GCD) :- X=0, GCD=Y.
% gcd(X, Y, GCD) :- Y=0, GCD=X.
% gcd(X, Y, GCD) :- X>Y, gcd(Y, X, GCD).
% gcd(X, Y, GCD) :- X<Y, M is Y mod X, gcd(X, M, GCD).

gcd(X,0,X) :- X > 0.
gcd(X,Y,G) :- Y > 0, Z is X mod Y, gcd(Y,Z,G).