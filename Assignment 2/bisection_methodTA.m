function [c,n,err] = bisection_methodTA(f,a,b,tol,N)
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



if sign(f(a)) == sign(f(b))
   c = [];
   n = 0;
   err = inf;
else
   n = 0;
   err = 1;
   while err > tol && n < N
        c = (b + a) / 2;
        err = (b-a)/2;
        n = n + 1;
        if f(c) == 0
            break;
        end
       
        if sign(f(a)) ~= sign(f(c))
            b = c;
           
        else
            a = c;
        end
   
    end

end   
   
end