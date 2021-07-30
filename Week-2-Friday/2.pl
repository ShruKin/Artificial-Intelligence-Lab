find(C,_,C,[]).  

find(Total,Item,Count,[H|T]) :-
      Item = H,
      Count1 is Count + 1,
      find(Total,Item,Count1,T).

find(Total,Item,Count,[H|T]) :-
      Item \= H,
      find(Total,Item,Count,T).