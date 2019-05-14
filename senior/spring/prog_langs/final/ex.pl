male(charlie).
male(sam).
male(tom).
male(chris).
male(ron).

female(gretchen).
female(grace).
female(kim).
female(marcy).
female(kathy).

parent_of(tom, charlie).
parent_of(tom, sam).
parent_of(tom, gretchen).
parent_of(tom, grace).
parent_of(kim, charlie).
parent_of(kim, sam).
parent_of(kim, gretchen).
parent_of(kim, grace).
parent_of(ron, marcy).
parent_of(ron, tom).
parent_of(ron, chris).
parent_of(kathy, marcy).
parent_of(kathy, tom).
parent_of(kathy, chris).

sibling(X, Y) :- parent_of(Z, Y),
                 parent_of(Z, X),
                 X \= Y.

grandparent_of(X, Y) :- parent_of(Z, Y),
                        parent_of(X, Z).

aunt(X, Y) :- female(X),
              parent_of(Z, Y),
              sibling(X, Z).
