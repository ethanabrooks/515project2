function [original] = haar_inv2D(haar_coeffs) 
    n = haar_degree(haar_coeffs);
    % matrix will have 2^n rows & columns
    original = haar_matrix(n) * haar_coeffs;
end