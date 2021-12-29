list_half_half(Xs, Ys, Zs) :-
   length(Xs, N),
   H is N - N // 2,
   length(Ys, H),
   append(Ys, Zs, Xs).

/*append(L,_,[a,b,c,d]), list_half_half(L,H1,H2).*/
