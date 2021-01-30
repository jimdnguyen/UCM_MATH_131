function y = myalternatesum(n)

y = 0;

for k = 1:n
    
   y = y + (((-1)^k) * k); 
   
end


end
%{
Pseudo-code for myalternatesum

input: integer n
output: sum of summation (-1)^k * k

%}