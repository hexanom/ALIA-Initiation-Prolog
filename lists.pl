element(Elt,[Elt|Rest],Rest).
element(Elt,[Deb|Fin],Rest) :- element(Elt,Fin,RecurRest),Rest=[Deb|RecurRest].

extraire(List,[Elt]) :- element(Elt, List, _).
extraire(List,[Elt|Fin]) :- element(Elt,List,Rest),extraire(Rest,Fin).

concatenation([],L2,L2).
concatenation([E|L1],L2,[E|L3]) :- concatenation(L1,L2,L3).
