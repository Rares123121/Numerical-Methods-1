function retval = polynomial_kernel (x, y, d)
  # TO DO: implement polynomial kernel function
  suma = dot(x, y);
  retval = (1 + suma) .^ d;
endfunction
