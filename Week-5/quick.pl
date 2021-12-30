quicksort([X|Xs],Ys) :-
  parttion(Xs,X,Left,Right),
  quicksort(Left,Ls),
  quicksort(Right,Rs),
  appnd(Ls,[X|Rs],Ys).
quicksort([],[]).

parttion([X|Xs],Y,[X|Ls],Rs) :- X<Y, parttion(Xs,Y,Ls,Rs).
parttion([X|Xs],Y,Ls,[X|Rs]) :-
  X > Y, parttion(Xs,Y,Ls,Rs).
parttion([],_,[],[]).

appnd([],Ys,Ys).
appnd([X|Xs],Ys,[X|Zs]) :- appnd(Xs,Ys,Zs).
