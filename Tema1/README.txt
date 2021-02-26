GRIGORE IRINA-DOMNICA
315 CB

~read_input_data.m~
Citesc numarul de centroizi, respectiv matricea de puncte din fisiere.

~clustering_pc.m~
Initializez matricea centroids cu matricea de puncte citita din fisier, avand numarul de 
centroizi egal cu NC. Iau o matrice auxiliara pe care o initializez cu 0. Parcurg matricea,
iar pentru fiecare punct calculez distanta fata de centroizi si gasesc fata de ce
centroid este mai aproape, completatand astfel si un vector ce retine cetroidul 
corespunzator fiecarui punct. Pentru fiecare componenta fac suma elementelor, iar 
la final calculez pozitia centroidului ca centru de greutate. Repet acesti pasi pana 
cand centroids = centroids2, adica pana in mometul in care pozitiile centroizilor
nu se mai modifica.

~view_clusters.m~
Aflu dimensiunile celor doua matrice (points si centroids), si la fel ca la task-ul 
precedent parcurg cele doua matrici si calculez distantele, complentand vectorul de 
pozitii. Pentru realizarea graficului folosesc comanda scatter3.

~compute_cost_pc.m~
La fel ca la task-ul 2 parcurg cele doua matrici, completez vectorul de pozitii, iar 
apoi pentru fiecare centroid calculez suma distantelor de la centroid la punctele 
ce apartin clusterului respectiv. In final fac suma costurilor tuturor clusterelor.

~view_cost_pc.m~
Citesc matricea de puncte, iar apoi formez matricea centroids. De asemenea, completez
vectorul v cu costurile fiecarui centroid, iar in final trasez graficul.

 
