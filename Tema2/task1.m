function A_k = task1 (image_in, k)
  matrix = double(imread(image_in));
  [m n] = size(matrix);
  [U S V] = svd(matrix);
  V = V';
  A_k = U(1:m,1:k)*S(1:k,1:k)*V(1:k,1:n);
endfunction
