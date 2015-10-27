function [coeffs] = haar2D_n(array)
%    l = length(array);
%    n = ceil(log2(l)); % haar matrix will have 2^n rows and columns
%    
%    % pad array with zeros to get 2^n rows and columns
%    pad_rows = 2^n - size(array, 1);
%    padded = padarray(array, pad_rows, 'post');
%
%    haar_inv_matrix = diag(haar_inv_trace(n)) * transpose(haar_matrix(n));
%    coeffs = haar_inv_matrix * padded;
