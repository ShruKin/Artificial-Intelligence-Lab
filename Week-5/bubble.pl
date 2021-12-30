bubblesort( List, SortedList) :-
    swp( List, List1 ), ! ,
    bubblesort( List1, SortedList) .
bubblesort( List, List).

swp( [ X, Y | Rest ], [ Y, X | Rest ] ) :-
    X > Y, ! .
swp( [ Z | Rest ], [ Z | Rest1 ] ) :-
    swp(Rest, Rest1 ).
