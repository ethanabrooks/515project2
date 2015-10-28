function [coeffs] = haar2D(array)
    padded = pad_for_haar(array);
    n = haar_degree(array);
    haar_inv_matrix = diag(haar_inv_trace(n)) * transpose(haar_matrix(n));
    coeffs = haar_inv_matrix * padded;
end