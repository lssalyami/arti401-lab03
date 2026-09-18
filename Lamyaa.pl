% Facts - Males
male(saad).
male(saleh).
male(mubarak).
male(khalid).
male(faisal).

% Facts - Females
female(shams).
female(lamyaa).
female(reham).
female(layan).

% Facts - Parent
parent(shams, saleh).
parent(shams, mubarak).
parent(saad, saleh).
parent(saad, mubarak).
parent(saleh, lamyaa).
parent(saleh, khalid).
parent(saleh, faisal).
parent(mubarak, reham).
parent(reham, layan).

% Rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.