same([],[]).
same([_|L1],[_|L2]) :- same(L1, L2).
