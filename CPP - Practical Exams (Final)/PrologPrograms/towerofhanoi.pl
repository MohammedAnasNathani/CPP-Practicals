% Move N disks from Source to Target using Auxiliary
tower_of_hanoi(0, _, _, _) :- !.  % Base case: No disks to move
tower_of_hanoi(N, Source, Target, Auxiliary) :-
    N > 0,
    M is N - 1,
    tower_of_hanoi(M, Source, Auxiliary, Target),  % Move N-1 disks to Auxiliary
    move_disk(Source, Target),                     % Move the Nth disk to Target
    tower_of_hanoi(M, Auxiliary, Target, Source).  % Move N-1 disks from Auxiliary to Target

% Move a disk from one peg to another
move_disk(Source, Target) :-
    format('Move disk from ~w to ~w~n', [Source, Target]).