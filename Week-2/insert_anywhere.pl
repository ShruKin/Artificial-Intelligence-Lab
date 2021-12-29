addE(X,1,[G|T],[G,X|T]).
addE(X,Y,[H|T],[H|T1]):-Y1 is Y-1,addE(X,Y1,T,T1).
