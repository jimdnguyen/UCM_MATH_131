function y = recursive_sequence(n)
% for_sequence is a function that takes in as input n and outputs the nth term of
% the sequence given by
%                 an+1=1/2*(an^2-n^2)
% with a_0=1 using recursion.

a_0 = 1;
tmpSequence = a_0;

if  n == 1
   y = tmpSequence;
else
    tmpSequence = ((1/2) * ((recursive_sequence(n-1))^2 - (n-1)^2));     
    y = tmpSequence;
end
    


end