function [padded] = pad_for_haar(array)
    n = haar_degree(array);
    % pad array with zeros to get 2^n rows and columns
    pad_rows = 2^n - size(array, 1);
    padded = padarray(array, pad_rows, 'post');
end