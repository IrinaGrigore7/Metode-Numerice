function view_cost_vs_nc(file_points)
   points = dlmread(file_points,' ',5,0);
  for i = 1:10
     centroids = clustering_pc(points,i);
     v(i) = compute_cost_pc(points, centroids);
  endfor
  i = 1:10;
  plot(i, v(i));
	% TODO compute cost for NC = [1..10] and plot 
end

