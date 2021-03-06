function task2()
  image_in = './in/images/image1.gif';
  matrix = double(imread(image_in));
  [m n] = size(matrix);
  [U S V] = svd(matrix);
  V = V';
  
  %genereaza graficul 1
  for i = 1:min(m,n)
    v1(i) = S(i,i);
  endfor
  figure (1);
  plot(v1);
  
  %genereaza graficul 2
  k = [1:min(m,n)];
  for i = 1:length(k)
    for j = 1:i
      a(j) = S(j,j);
    endfor
    suma1(i) = sum(a);
  endfor
  suma2 = sum(diag(S));
  for i = 1:length(suma1)
    v2(i) = suma1(i)/suma2;
  endfor
  figure(2);
  plot(v2);
  
  %genereaza graficul 3
   for l = 1:length(k)
      A_k = U(1:m,1:l)*S(1:l,1:l)*V(1:l,1:n);
      suma3 = 0;
      for i = 1:m
        for j = 1:n
          suma3 = suma3 + (matrix(i,j) - A_k(i,j))^2;
        endfor
      endfor
     v3(l) = suma3/(m*n);
   endfor
   figure (3);
   plot(v3);
   
   %genereaza graficul 4
   for i = 1:length(k)
     v4(i) = (m*i + n*i + i) / (m*n);
   endfor
   figure (4);
   plot(v4);
endfunction

