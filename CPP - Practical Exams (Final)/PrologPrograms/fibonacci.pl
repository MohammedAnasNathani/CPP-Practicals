% Base cases for Fibonacci series
fibonacci(0, 0).
fibonacci(1, 1).

% Recursive case for Fibonacci series
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

% Print the Fibonacci series up to N terms
print_fibonacci(0) :- !.  % Base case: do nothing for 0
print_fibonacci(N) :-
    N > 0,
    print_fibonacci(N - 1),  % Recursive call to print previous terms
    fibonacci(N, F),          % Calculate the N-th Fibonacci number
    format('~d ', [F]).       % Print the number

% Add a newline after printing the series
print_fibonacci(N) :- 
    N > 0,
    format('~n', []).  % Print a newline after printing the series
