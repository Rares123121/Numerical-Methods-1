% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    mean_values = zeros(1,columns(X));
    variances = zeros(columns(X), columns(X));

    for i = 1:columns(X)
      suma = 0;
      %calculez suma pe fiecare coloana
      for j = 1:rows(X)
          suma = suma + X(j,i);
      endfor
      mean_values(1, i) = suma;
    endfor
   mean_values = mean_values / rows(X);

   for i = 1:rows(X)
      vector = X(i,:) - mean_values;
      aux = vector' * vector;
      variances = variances + aux;
   endfor
   variances = variances / rows(X);
endfunction
