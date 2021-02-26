% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = points(1:NC,:);
  [line col] = size(points);
  centroids2 = zeros(NC,3);
  ok = 0;
while (ok == 0)
    centroids2 = centroids;
  for i = 1:line
    dist_min = inf;
    for j = 1:NC
       dist= norm(centroids(j,:)-points(i,:));
       if dist < dist_min
         dist_min = dist;
         centroids_vect(i) = j;
       endif
    endfor
  endfor
  for i = 1:NC
    suma1 = 0;
    suma2 = 0;
    suma3 = 0;
    contor = 0;
    for j =1:line
      if (centroids_vect(j) == i)
        contor = contor + 1;
        suma1 = suma1 + points(j,1);
        suma2 = suma2 + points(j,2);
        suma3 = suma3 + points(j,3);
      endif
    endfor
    centroids(i,1) = suma1/contor;
    centroids(i,2) = suma2/contor;
    centroids(i,3) = suma3/contor;
  endfor
  if (centroids2 == centroids)
    ok = 1;
  endif
  endwhile
	% TODO K-Means code 
endfunction
