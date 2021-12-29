sum(L,S) :- sum(L,0,S).

sum([],X,X).
sum([H|T], A, S) :- A2 is A + H, sum(T,A2,S).
