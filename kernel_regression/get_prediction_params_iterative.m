function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  A = lambda * eye(rows(K)) + K;
  x = zeros(rows(K), 1);
  b = y;
  r = b - A * x;
  v = r;
  tolsq = 0.0001 * 0.0001;
  max_iter = 1000;
  k = 1;
  %folosind metoda gradientului conjugat
  %rezolv sistemul si scot parametrii
  while k <= max_iter && (r' * r) >tolsq
    t = (r' * r)/(v' * A * v);
    x = x + t * v;
    r1 = r - t * A * v;
    s = (r1' * r1) / (r' * r);
    v = r1 + s * v;
    r = r1;
    k = k + 1;
  endwhile
  a = x;
endfunction
