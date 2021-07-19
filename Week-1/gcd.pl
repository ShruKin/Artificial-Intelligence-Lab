gcd(X, Y, GCD) :- X=0, GCD=Y.
gcd(X, Y, GCD) :- Y=0, GCD=X.
gcd(X, Y, GCD) :- X>Y, gcd(Y, X, GCD).
gcd(X, Y, GCD) :- X<Y, M is Y mod X, gcd(X, M, GCD).