type(ungulate, animal).
type(fish, animal).

is_a(zebra, ungulate).
is_a(herring, fish).
is_a(shark, fish).
is_a(goldfish, fish).

lives(zebra, on_land).
lives(frog, on_land).
lives(frog, in_water).
lives(shark, in_water).

can_swim(Y) :-
  lives(Y, in_water); % ;(semicolon) means OR ,(comma) means AND
  is_a(Y, fish).

can_run(Y):-
  lives(Y, on_land).