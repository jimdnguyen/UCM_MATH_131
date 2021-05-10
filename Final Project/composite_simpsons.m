function I = composite_simpsons(f,a,b,n)
%function that computes \int_a^b f(x) dx using composite Simpson's rule
    %INPUTS: 
    %function f
    %bounds of interval [a,b]
    %n+1 is the number of nodes
    %OUTPUT: 
    %I the numerical integration
    tic
    if mod(n,2) == 1
       I = [];
       return;
    end
    
    I = 0;
    h = (b-a)/n;
    
    x = zeros(1,n+1);
    
    for i = 1:n + 1
       x(i) = a + (i-1)* h; 
    end
    
    for j = 1:n/2
       I = I + (h/3) * (f(2*j-1) + 4*f(2*j) + f(2*j+1));
    end
    toc
 
 
end