function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
    retval = sparse(length(k_secv_set), length(words_set));

    #cu astea nu e eficient ultimul test
    #index_word = word_idx(words_set);
    #index_secv = k_secv_idx(k_secv_set);
    len = length(corpus_words);

    for i = 1:len - k
      %imi declar sirul vid
      aux = '';
      for j = 1:k
        %concatenez la aux cuvinte
        %pentru a construi din nou
        %o k-secventa
        aux = [aux corpus_words{i + j - 1}];
        if j != k
          aux = [aux ' '];
        endif
      endfor
      %extrag indiele secventei
      idx_sec = find(strcmp(aux, k_secv_set));
      %extrag indiele cuvantului
      idx_word = find(strcmp(corpus_words{i + k}, words_set));
      %incrementez valoarea de la pozitiile indicilor scosi
      retval(idx_sec, idx_word) = retval(idx_sec, idx_word) + 1;
    endfor


end
