function [c,n,err] = Newtons_method(f,fp,x0,N,tol)
%function that computes one root of f over [a,b] using bisection method
%INPUTS:
%function f
%derivative of f, fp
%bounds of interval [a,b]
%x0 initial guess
%N maximum number of iterations
%tol error tolerence
%OUTPUS:
% c the root
% n the number of iterations made
% err the error

c = 0;
n = 0;
x = x0 - (f(x0)/fp(x0));
err = abs(x-x0);

while n < N && err > tol
    x = x0 - (f(x0)/fp(x0));
    c = x;
    err = abs(x - x0);
    n = n+1;
    x0 = x;
end


end