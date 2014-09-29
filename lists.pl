element(X,[X|R],R).
element(X,[D|L],R) :- element(X,L,F),R=[D|F].
