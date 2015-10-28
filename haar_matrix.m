function [matrix] = haar_matrix(n)
    % matrix will have 2^n rows & columns
    if n == 0
        matrix = 1;
    else
        % W_{n+1} = [W_n ? [1;1], I_{2^n} ? [1;-1]]
        first = kron(haar_matrix(n-1), [1;1]);
        second = kron(eye(2^(n-1)), [1;-1]);
        matrix = [first, second];
    end
