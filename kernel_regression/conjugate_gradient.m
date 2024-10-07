function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
  # Implementati algoritmul pentru metoda gradientului conjugat
  r = b - A * x0;
  v = r;
  x = x0;
  tolsq = tol * tol;
  k = 1;
  while k <= max_iter && (r' * r) > tolsq
    t = (r' * r) / (v' * A * v);
    x = x + t * v;
    r1 = r - t * A * v;
    s = (r1' * r1) / (r' * r);
    v = r1 + s * v;
    r = r1;
    k = k + 1;
  endwhile
endfunction
