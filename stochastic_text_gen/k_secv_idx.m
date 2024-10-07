function retval = k_secv_idx (distinct_k_sec)
  % return disctionary containing the indices of each elem from distinct_k_sec
  % HINT: containers.Map
  % Try not to set the key-value pairs iteratively, use containers.Map(keys, values) whenever possible
   keys = zeros(1, length(distinct_k_sec));
   %pe pozitia i pun valoarea i
   for i = 1:length(distinct_k_sec)
     keys(i) = i;
   endfor
   %atribui fiecarui element
   %valoarea indicelui ei
   retval = containers.Map(distinct_k_sec, keys);
endfunction
