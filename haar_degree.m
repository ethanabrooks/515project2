function [n] = haar_degree(array)
    l = length(array);
    n = ceil(log2(l));
end