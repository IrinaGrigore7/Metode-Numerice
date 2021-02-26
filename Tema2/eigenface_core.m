function [m A eigenfaces pr_img] = eigenface_core(database_path)
   T = [];
   for i = 1 : 10
     image_path = strcat(database_path,'/',int2str(i),'.jpg');
     matrix = double(rgb2gray(imread(image_path)));
     [l1 c1] = size(matrix);
     a = [];
     for j = 1 : l1
       for k = 1 : c1
         a = [a matrix(j,k)]; %parcurg matricea si o pun intr-un vector
       endfor
     endfor
     T = [T; a]; 
   endfor
   T = T';
   [l2 c2] = size(T);
   m = [];
   for i = 1 : l2
     suma = 0;
     for j = 1 : c2
       suma = suma + T(i,j);
     endfor
     media = suma/c2;
     m = [m media];
   endfor
   m = m';
   A = T - m;
   [W, lambda] = eig(A'*A); %generez vectorii si valorile proprii pentru matricea A'*A
   [l3 c3] = size(lambda);
   V = [];
   for i = 1 : l3
       if lambda(i,i) > 1
         V = [V, W(:,i)]; %pun in matricea V vecorii proprii corespunzatori valorilor proprii mai mari decat 1
       endif
   endfor    
   eigenfaces = A*V;
   pr_img = eigenfaces'*A;
endfunction