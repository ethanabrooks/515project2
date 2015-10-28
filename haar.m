function outputVal = haar(inputVal)  % Row vector I/O
N = ceil(log(length(inputVal))/log(2));
inputValPowerN = zeros(1,2^N);
inputValPowerN(1:length(inputVal))=inputVal;
H = haar_matrix(N);
outputVal = inputValPowerN*H';  % Same as (H*x')'
