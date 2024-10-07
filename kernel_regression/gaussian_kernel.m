function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
  vec = x - y;
  suma = norm(vec) * norm(vec);
  e = -suma / (2 * sigma * sigma);
  retval = exp(e);
endfunction
