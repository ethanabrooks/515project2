function [coeffs] = haar(array) 
    %k = num rounds of average and differencing
    padded = transpose(pad_for_haar(transpose(array)));
    coeffs = av_and_diff(padded);
    
    function [coeffs] = av_and_diff(array)
        m = size(array, 2);
        if m == 1
            coeffs = array;
        else
            odds = array(:, 1:2:m);
            evens = array(:, 2:2:m);
            avs = (odds + evens)/2;
            diffs = (odds - evens)/2;
            coeffs = [av_and_diff(avs), diffs];
        end
    end
end
    
