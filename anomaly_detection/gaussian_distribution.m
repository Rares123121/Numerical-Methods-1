function probability = gaussian_distribution(X, mean_value, variance)
    probability = 0;
    determinant = det(variance);
    val1 = 1 / (sqrt(((2 * pi) .^ n) * determinant);
    val2 = exp( -0.5 * (X - mean_value)' * inv(variance) * (X - mean_value));
    probability = val1 * val2;
endfunction
