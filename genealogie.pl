personne(bob,m).
personne(kate,f).
personne(mary,f).
personne(jack,m).
personne(bruno,m).
personne(jacqueline,f).

parent(bruno,bob).
parent(bob,kate).
parent(mary, kate).
parent(kate, jack).
parent(bob, jacqueline).
parent(mary, jacqueline).

mere(X,Y) :- personne(X,f),parent(X,Y).
pere(X,Y) :- personne(X,m),parent(X,Y).
grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
grandmere(X,Y) :- personne(X,f),grandparent(X,Y).
grandpere(X,Y) :- personne(X,m),grandparent(X,Y).
ancetre(X,Y) :- parent(X,Y).
ancetre(X,Y) :- parent(X,Z),ancetre(Z,Y).
descendance(X,Y) :- parent(Y,X).
descendance(X,Y) :- parent(Y,Z),ancetre(Z,X).

frere(X,Y) :- parent(Z,X),personne(X,m),parent(Z,Y),X\=Y.
soeur(X,Y) :- parent(Z,X),personne(X,f),parent(Z,Y),X\=Y.

freres(L) :- setof([X,Y],(frere(X,Y)),L).
soeurs(L) :- setof([X,Y],(soeur(X,Y)),L).

tante(X,Y) :- soeur(X,Z),parent(Z,Y).
oncle(X,Y) :- frere(X,Z),parent(Z,Y).
