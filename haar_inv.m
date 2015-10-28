function outputVal = haar_inv(inputVal)  % Row vector I/O
N = ceil(log(length(inputVal))/log(2));
inputValPowerN = zeros(1,2^N);
inputValPowerN(1:length(inputVal))=inputVal;
Hinv = pinv(haar_matrix(N));
outputVal = inputValPowerN*Hinv';  % Same as (Hinv*x')'
