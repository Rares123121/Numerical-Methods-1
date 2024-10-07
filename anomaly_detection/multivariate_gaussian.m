% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    probabilities = zeros(rows(X), 1);
    determinant = det(variances);
    val1 = 1 / sqrt((2 * pi) .^ columns(X) * determinant);
    inversa = inv(variances);
    for i = 1:rows(X)
       vect = X(i, :) - mean_values;
       val2 = vect * inversa * vect';
       probabilities(i, 1) = val1 * exp(val2 / -2);
    endfor
endfunction
