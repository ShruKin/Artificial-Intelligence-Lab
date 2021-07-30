sub_list([X], [X|_]).
sub_list([X], [Y|T]) :-
    X \== Y,
    sub_list([X], T).
sub_list([X,Y|T1], [X|T2]) :-
    sub_list([Y|T1], T2).
sub_list([X,Y|T1], [Z|T2]) :-
    X \== Z,
    sub_list([X,Y|T1], T2).