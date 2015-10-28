function [coeffs] = haar_inv2D_n(array)
    padded = pad_for_haar(array);
    n = haar_degree(array);
    norm_haar_matrix = haar_norm(n);
    coeffs = norm_haar_matrix * padded;
end