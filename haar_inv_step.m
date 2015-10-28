function [array] = haar_inv_step(coeffs, k)
    if k == 0 || size(coeffs, 2) == 1
        array = coeffs;
    else
        half1 = haar_inv_step(coeffs(:, 1:end/2), k-1);
        half2 = coeffs(:, end/2+1:end);
        array = kron(half1, [1,1]) + kron(half2, [1,-1]);
    end
end
