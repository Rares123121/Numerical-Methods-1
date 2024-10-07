
function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
     false_pozitives = 0;
     false_negatives = 0;
     true_pozitives = 0;
     %trec prin vectorul de predicitii
     %pentru a gasi elementele cerute
     for i = 1:rows(predictions)
        if (predictions(i) == 1 && truths(i) == 1)
          true_pozitives = true_pozitives + 1;
        elseif (predictions(i) == 1 && truths(i) == 0)
           false_pozitives = false_pozitives + 1;
        elseif (predictions(i) ==  0 && truths(i) == 1)
           false_negatives = false_negatives + 1;
     endfor
endfunction
