function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita
    L = zeros(rows(A));

    for i = 1 : rows(A)
      for j = 1 : i
        suma = 0;
        for k = 1:j-1
          suma = suma + L(i, k) * L(j, k);
        endfor
        if i == j
          L(i, i) = sqrt(A(i, i) - suma);
        endif
        if i != j
          L(i, j) = (A(i, j) - suma) / L(j, j);
        endif

      endfor
    endfor

endfunction
