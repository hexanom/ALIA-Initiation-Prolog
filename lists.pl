element(Elt,[Elt|Rest],Rest).
element(Elt,[Deb|Fin],Rest) :- element(Elt,Fin,RecurRest),Rest=[Deb|RecurRest].

extraire(List,[Elt]) :- element(Elt, List, _).
extraire(List,[Elt|Fin]) :- element(Elt,List,Rest),extraire(Rest,Fin).
