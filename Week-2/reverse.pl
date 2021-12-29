reverse([],Z).
reverse([_|T],Z) :- reverse(T,Z).
