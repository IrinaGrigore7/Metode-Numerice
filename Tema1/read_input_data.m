% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	
	input = fopen(file_params);
  NC = fscanf(input,"%i",1);
	points = dlmread(file_points, " ", 5, 1);

	% TODO read NC
	% TODO read points
end

