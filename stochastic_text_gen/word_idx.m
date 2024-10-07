function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map
    keys = zeros(1, length(distinct_wds));
    for i = 1:length(distinct_wds)
      keys(i) = i;
    endfor
    retval = containers.Map(distinct_wds, keys);
endfunction
