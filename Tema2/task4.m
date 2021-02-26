function [A_k S] = task4(image_in, k)
  matrix = double(imread(image_in));
  [m n] = size(matrix);
  suma = 0;
  for i = 1:m
    suma = sum(matrix(i,:));
    media = suma/n;
    v(i) = media;
    matrix(i,:) = matrix(i,:) - v(i);
  endfor
  Z = matrix*(matrix'/(n-1));
  [V S] = eig(Z);
  W = V(:,k:-1:1);
  Y = W'*matrix;
  v = v';
  A_k = W*Y + v;
endfunction
