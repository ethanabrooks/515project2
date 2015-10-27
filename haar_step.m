function [coeffs] = haar_step(array, k) 
    %k = num rounds of average and differencing
    m = length(array);
    if m == 1 || k == 0
        coeffs = array;
    else
        odds = array(:, 1:2:m);
        evens = array(:, 2:2:m);
        avs = (odds + evens)/2;
        diffs = (odds - evens)/2;
        coeffs = [haar_step(avs, k-1), diffs];
    end
    
