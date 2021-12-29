uni([],[],[]).
uni(List1,[],List1).
uni(List1, [Head2|Tail2], [Head2|Output]):-
    \+(member(Head2,List1)), uni(List1,Tail2,Output).
uni(List1, [Head2|Tail2], Output):-
    member(Head2,List1), uni(List1,Tail2,Output).
