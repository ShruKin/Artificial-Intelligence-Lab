match([H|_],0,H) :-!.
match([_|T],N,H) :-
    N > 0,
    N1 is N-1,
    match(T,N1,H).
