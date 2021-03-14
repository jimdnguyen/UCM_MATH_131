function fp = derivative_3point(f,x)
    %function that computes f'(x) using 3-point derivative rule
    %INPUTS: 
    %function f
    %vector over which to estimate derivative, x
    %OUTPUT: 
    %fp the numerical approximation of f' evaluated at x
    
    %initialize fp, find h, N
    N = length(x);
    h = (x(end) - x(1))/(N-1);
    fp = zeros(1,N);
    
    % loop to find fp
    % x(1) or x(end), you have to use endpoint formulas
    for i = 1:N
       if i ~= 1 || i ~= N 
          fp(i) = (1/(2*h)) * (f(x(i) + h) - f(x(i) - h)); %3-pt midpoint rule
       end
       
       if i == 1         
          fp(i) = (1/(2*h)) * (-3 * f(x(i)) + 4 * f(x(i) + h) - f(x(i) + 2 * h));%; %end-point formula
       end
       
       if i == N
          fp(i) = (1/(2*h)) * (f(x(i) - 2 * h) - 4 * f(x(i) - h) + 3 * f(x(i)));%;  %end-point formula
       end
    end 
end