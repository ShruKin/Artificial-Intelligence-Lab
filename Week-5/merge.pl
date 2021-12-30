split([],[],[]).
split([A],[A],[]).
split([A,B|T],[A|P1],[B|P2]) :-
 split(T,P1,P2).
mrge([],L,L).
mrge(L,[],L).
mrge([A|T1],[B|T2],[A|L2]) :-
 A =< B, mrge(T1,[B|T2],L2).
mrge([A|T1],[B|T2],[B|L2]) :-
 A > B, mrge([A|T1],T2,L2).
mergeSort([],[]).
mergeSort([A],[A]).
mergeSort(L1,L2) :-
 split(L1,P1,P2),
 mergeSort(P1,S1),
mergeSort(P2,S2),
mrge(S1,S2,L2).
