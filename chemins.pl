lien(paris,lyon).
lien(lyon,marseille).
lien(nice,marseille).
lien(lyon,paris).

chemin(X,Y) :- lien(X,Y).
chemin(X,Y) :- lien(Y,X).
chemin(X,Z) :- lien(X,Y), chemin(Y,Z).
chemin(X,Z) :- lien(Z,Y), chemin(Y,X).
