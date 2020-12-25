add_to_target(L, Target) :-
    add_to_target_helper(L, 0, Target).

add_to_target_helper([], Sum, Target) :- Sum = Target.
add_to_target_helper([H|T], Sum, Target) :- 
    Newsum is Sum + H, 
    add_to_target_helper(T, Newsum, Target).

list_helper(L,N,Target,Max) :-
    length(L,N),
    list(L,Target,Max).

list([], _,_) :- true.
list([H|T], Target,Max) :-
    between(0,100,H),
    H =< Target,
    H =< Max,
    H >= 1,
    list(T,Target,Max).

find_team(Teams,Players,"squads"):-
    find_team_helper(Teams,Players,4).
find_team(Teams,Players,"trios"):-
    find_team_helper(Teams,Players,3).
find_team(Teams,Players,"duos"):-
    find_team_helper(Teams,Players,2).

find_team_helper(Teams, Players, Max):-
    list_helper(L, Teams, Players, Max),
    add_to_target(L,Players),
    write(L).