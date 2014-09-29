element(Elt,[Elt|Rest],Rest).
element(Elt,[Deb|Fin],[Deb|RecurRest]) :- element(Elt,Fin,RecurRest).

extraire(List,[Elt]) :- element(Elt, List, _).
extraire(List,[Elt|Fin]) :- element(Elt,List,Rest),extraire(Rest,Fin).

concatenation([],L2,L2).
concatenation([E|L1],L2,[E|L3]) :- concatenation(L1,L2,L3).

inv([E],[E]).
inv([E1,E2],[E2,E1]).
inv([E|L1],L2) :- inv(L1,LI),concatenation(LI,[E],L2).

