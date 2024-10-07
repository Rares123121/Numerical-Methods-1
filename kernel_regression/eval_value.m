function pred = eval_value(x, X, f, f_param, a)
   # TO DO: pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a
   suma = 0;
   for i = 1:rows(X)
      suma = suma + a(i) * f(X(i, :), x, f_param);
   endfor

   pred = suma;

endfunction
