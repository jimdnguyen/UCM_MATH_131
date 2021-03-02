function [c,n,err] = bisection_method(f,a,b,tol,N)
%function to solve the root-finding problem f(x) = 0 over [a,b] using bisection
% INPUTS:
% f function at hand
% a,b bounds of the interval
% tol: error tolerance
% N: maximum number of iterations
% Condition: ??? You Fill In ????
%OUTPUS:
% c the root
% n the number of iterations made
% err the error

if sign(f(a)) ~= sign(f(b))
    n = 0;
    err = (b-a)/2;
    
while err > tol && n < N
    


    p = (b + a) / 2; 
        
    c = p;
        
    err = (b-a)/2;
    
    if f(p) == 0
            
        break;
            
    else
            
        if sign(f(p)) == sign(f(b))
            b = p;
            
        else
            a = p;
        end
            
    end
    n = n + 1;
end
else
    c = [];
    n = 0; 
    err = inf;
end
end



