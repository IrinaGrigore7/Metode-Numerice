function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img) 
    matrix = double(rgb2gray(imread(image_path)));
    [l1 c1] = size(matrix);
    a = [];
    for j = 1 : l1
      for k = 1 : c1
        a = [a matrix(j,k)];
      endfor
    endfor
    T = a;
    T = T';
    T = T - m;
    pr_img_test = eigenfaces'*T;
    [l2 c2] = size(pr_img);
    min_dist = inf;
    for i = 1 : c2
     dist = norm(pr_img(:,i)-pr_img_test);
       if(dist < min_dist)
         min_dist = dist;
         output_img_index = i;
       endif
    endfor
endfunction
