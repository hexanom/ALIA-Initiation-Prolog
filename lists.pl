element(X,[X|R],R).
element(X,[D|L],R) :- element(X,L,F),R=[D|F].

extraire(L,[E]) :- element(E, L, _).
extraire(L,[E|F]) :- element(E,L,R),extraire(R,F).
