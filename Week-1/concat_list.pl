ap([],L,L).
ap([H|T],L,[H|Z]):- ap(T,L,Z).
