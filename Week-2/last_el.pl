my_last([X],X).
my_last([_|L],Y) :- my_last(L,Y).
