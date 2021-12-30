perm([],[]).
perm(L,[H|T]) :-
 append(V,[H|U],L),
 append(V,U,W), perm(W,T).
perm(L,[H|T]) :-
append(V,[H|U],L),
 append(V,U,W), perm(W,T).
inOrder([]).
inOrder([_]).
inOrder([A,B|T]) :-
 A =< B, inOrder([B|T]).
permSort(L1,L2) :-
 perm(L1,L2), inOrder(L2).
