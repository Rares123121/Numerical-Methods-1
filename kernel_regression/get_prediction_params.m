function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  I = eye(columns(K));
  aux = inv(lambda * I + K);
  a = lambda * aux * y;
endfunction
