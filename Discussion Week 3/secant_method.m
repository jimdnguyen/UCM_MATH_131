function [c,n,err] = secant_method(f,x0,x1,N,tol)
%function that computes one root of f over [a,b] using secant method
%INPUTS:
%function f
%bounds of interval [a,b]
%x0 initial guess
%x1 second initial guess
%N maximum number of iterations
%tol error tolerence
%OUTPUS:
% c the root
% n the number of iterations made
% err the error

n = 0;
err = 1;

while n < N && err > tol
    c = x1 - (f(x1)*(x1 - x0)) / (f(x1) - f(x0));    
    err = abs(c - x1);
    n = n+1;
    x0 = x1;
    x1 = c;    
end

if n == N
    disp('Maximum iteration reached')
end

end