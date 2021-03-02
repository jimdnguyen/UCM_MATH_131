function y = for_sequence(n)
% sequence is a function that takes in as input n and outputs the nth term of
% the sequence given by
%                 an+1=1/2*(an^2-n^2)
% with a_0=1
% using a for loop.

a_0 = 1;
tmpSequence = a_0;
tmpSequence2 = 0;

%if n == 1
  %  y = tmpSequence;
%else   
    
    for i = 1:n
        tmpSequence2 = a_0;
        %tmpSequence = ((1/2) * ((tmpSequence)^2 - i^2));
        a_0 = ((tmpSequence2)^2 - i^2)/2;
    end
    y = tmpSequence2;
%end
    


end