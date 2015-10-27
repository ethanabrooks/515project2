function [array] = haar_inv_step(coeffs, k)
    array = reconstruct(coeffs(1), coeffs(2), coeffs(3:end), 2);
    
    function [array] = reconstruct(part1, part2, rest, len)
        combine = kron(part1, [1,1]) + kron(part2, [1,-1]);
        % e.g. part1 = [1 2], part2 = [0 3], combine = [1+0, 1-0, 2+3, 2-3]
        if isempty(rest) || 2^k < len % limits rounds of recom
            array = combine;
        else
            array = reconstruct...
                (combine, rest(1:len), rest(len+1:end), len * 2);
        end
    end
end
