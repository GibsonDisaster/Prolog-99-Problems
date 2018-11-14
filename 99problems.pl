my_last([H|[]], H).
my_last([_|T], L) :- my_last(T, L).

last_but_one([H|[_|[]]], H).
last_but_one([_|T], L) :- last_but_one(T, L).

element_at([H|_], 1, H).
element_at([_|T], N, E) :- N1 is N - 1, element_at(T, N1, E).

list_length([], 0).
list_length([_|Xs], L) :- list_length(Xs, N), L is N+1.