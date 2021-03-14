function I = composite_midpoint(f,a,b,n)
%function that computes \int_a^b f(x) dx using composite midpoint rule
    %INPUTS: 
    %function f
    %bounds of interval [a,b]
    %n number of subintervals
    %OUTPUT: 
    %I the numerical integration
    
    %creation of the nodes and mesh size
    I = 0;
    h = (b-a)/n;
    
    %creation midpoint rule
    for i = 1:n
        I = I + h * f(a +(i - 1) * h + h / 2);
    end
end