function I = composite_trapezoid(f,a,b,n)
    %function that computes \int_a^b f(x) dx using composite Trapezoid rule
    %INPUTS: 
    %function f
    %bounds of interval [a,b]
    %n number of subintervals
    %OUTPUT: 
    %I the numerical integration
    
    %creation of the nodes and mesh size
    I = 0;
    h = (b-a)/n;

    %creation trapezoid rule
    for i = 1:n
        I = I + (h/2) * (f(a + (i-1)*h) + f(a+(i*h)));
    end
end