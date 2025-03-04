function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru
  #mat = zeros(rows(X), rows(X));
  K = zeros(rows(X), rows(X));
  for i = 1:rows(X)
    for j = 1:rows(X)
      %aplic functia f pe fiecare linie
      K(i, j) = f(X(i,:),X(j, :), f_param);
    endfor
  endfor

endfunction
