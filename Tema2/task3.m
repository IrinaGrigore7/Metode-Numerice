function [A_k S] = task3(image_in, k)
  matrix = double(imread(image_in));
  [m n] = size(matrix);
  suma = 0;
  for i = 1:m
    suma = sum(matrix(i,:));
    media = suma/n;
    v(i) = media;
    matrix(i,:) = matrix(i,:) - v(i);
  endfor
  Z = matrix'/sqrt(n-1);
  [U S V] = svd(Z);
  W = V(:,1:k);
  Y = W'*matrix;
  v = v';
  A_k = W*Y + v;
endfunction
