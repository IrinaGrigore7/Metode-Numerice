% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
  [line col] = size(points);
  [line1 col1] = size(centroids);
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
  	scatter3(points(:, 1), points(:, 2), points(:, 3), [], centroids_vect, 'filled');
	% TODO graphical representation coded here 
end

