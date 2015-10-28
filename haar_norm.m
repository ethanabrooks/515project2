function [matrix] = haar_norm(n)
    % matrix will have 2^n rows & columns
        norm_scalars = haar_inv_trace(n).^.5;
        matrix = haar_matrix(n)*diag(norm_scalars);
    end