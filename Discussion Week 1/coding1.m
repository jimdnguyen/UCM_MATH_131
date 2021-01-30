%Problem 2 coding1.m
%a
y = @(x) (1/2)*(x-1).^2;
yprime = @(x) (x-1);

%c
h = 0.005;
approx = (y(1.1 + h) - y(1.1))/h

%d
abs_err = abs(approx - yprime(1.1))

rel_err = abs_err/yprime(1.1)

