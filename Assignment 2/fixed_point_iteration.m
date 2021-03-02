function [c,n,err] = fixed_point_iteration(g,x0,tol,N)
%function to solve the root-finding problem g(x) - x = 0 by solving g(x)=x 
% INPUTS:
% g function at hand
% x0 initial guess
% tol: error tolerance
% N: maximum number of iterations
%OUTPUS:
% c the root
% n the number of iterations made
% err the error

n = 0;
x = g(x0);
err = abs(x-x0);
c = 0;

while err > tol && n < N
    
    x = g(x0);
    c = x;
    err = abs(x - x0);
    n = n + 1;
    x0 = x;
    
end



end
