leng([],N):-N is 0.
leng([_|T],N):-leng(T,N1),N is N1+1.
