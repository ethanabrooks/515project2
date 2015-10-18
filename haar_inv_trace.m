function [trace] = haar_inv_trace(n) 
    if n == 0
        trace = 1;
    else
        prev = haar_inv_trace(n-1);
        trace = [prev/2, ones(1, 2^(n-1))/2];
    end