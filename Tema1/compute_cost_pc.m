% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	[line col] = size(points);
  [line1 col1] = size(centroids);
  cost = 0;
  for i = 1:line
    dist_min = inf;
    for j = 1:line1
       dist= norm(centroids(j,:)-points(i,:));
       if (dist < dist_min)
         dist_min = dist;
         centroids_vect(i) = j;
       endif
    endfor
  endfor
  for i = 1:line1
    suma = 0;
    for j =1:line
      if (centroids_vect(j) == i)
        suma = suma + norm(centroids(i,:)-points(j,:));
      endif
    endfor
    cost = suma + cost;
  endfor
	% TODO compute clustering solution cost
end

