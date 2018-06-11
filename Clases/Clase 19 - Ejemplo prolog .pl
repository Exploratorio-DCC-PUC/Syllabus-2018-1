madre(natalia,rafaela).
padre(francisco,rafaela).
padre(javier,natalia).
padre(jorge,francisco).
madre(denisse,francisco).
madre(rosa,denisse).

hombre(X) :- padre(X,Y).

progenitor(X,Y) :- madre(X,Y).
progenitor(X,Y) :- padre(X,Y).

abuelo(X,Y) :-  progenitor(Z,Y), padre(X,Z).

ancestro(X,Y) :- progenitor(X,Y).
ancestro(X,Y) :- progenitor(X,Z),ancestro(Z,Y).
