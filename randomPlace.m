%Input :- n, recons
%Output :- An array that has 'recons' number of different integer values
%          in the range of 1 to n
function [s] = randomPlace(n,recons)
    a = randperm(n);
    s = a(1:recons);
return;