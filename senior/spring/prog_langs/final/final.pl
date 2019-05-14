dupli([], []).
dupli([X|Xs], [X,X|Ys]) :- dupli(Xs, Ys).

elementAt(_, [], _).
elementAt(X, [X|_], 0) :- true.
elementAt(X, [_|Ys], Z) :- Q is Z-1, elementAt(X, Ys, Q).
