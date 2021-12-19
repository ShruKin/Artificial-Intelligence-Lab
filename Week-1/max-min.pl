maxL([X], X).
maxL([H|T], MAX) :- H>MAX, maxL(T,NEWMAX), NEWMAX is H.
