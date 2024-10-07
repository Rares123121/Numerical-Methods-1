% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    pred = zeros(rows(probabilities), 1);
    maxim = max(probabilities);
    minim = min(probabilities);
    %determin pasul pentru epsilon
    pas = (maxim - minim) / 1000;
    %trec prin vector din pas in pas
    for i = minim:pas:maxim
      %construiesc vectorul de predicitii
      for k = 1:rows(probabilities)
         if probabilities(k) < i
            pred(k) = 1;
         endif
      endfor
      trp = 0;
      flp = 0;
      fln = 0;
      for j = 1:rows(truths)
        if truths(j) == 1 && pred(j) == 1
          trp = trp + 1;
        endif
        if truths(j) == 1 && pred(j) == 0
          fln = fln + 1;
        endif
        if truths(j) == 0 && pred(j) == 1
          flp = flp + 1;
        endif
      endfor
      prec = trp / (trp + flp);
      rec = trp / (trp + fln);

      f1 = (2 * prec * rec) / (prec + rec);
      if f1 > best_F1
         best_F1 = f1;
         best_epsilon = i;
         associated_precision = prec;
         associated_recall = rec;
      endif
    endfor
endfunction
