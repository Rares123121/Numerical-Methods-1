function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin
  B = cell(length(A) - k , 1);

  for i = 1:length(A) - k
    %initialiez un sir vid, la care voi
    %concatena elemnte din A, pentru a
    %construi o k-secventa
    aux = '';
    for j = 1:k
      aux = [aux A{i + j -1}];
      if j != k
        aux = [aux ' '];
      endif
    endfor
    B{i} = aux;
  endfor
endfunction
