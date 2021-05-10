N = 2;
n = 10000;
% for simpsons rule and trapezoid rule, N = 2
f = @(x,y)(exp(x));
a = 0;
b = 4;

composite_simpsons_value = composite_simpsons(f,a,b,N)

composite_trapezoid_value = composite_trapezoid(f,a,b,N)

mcintegralfunction_value = mcintegralfunction(f,a,b,n)

f_exact = integral(f,a,b)

simpson_error = abs(composite_simpsons_value - f_exact)

trapezoid_error = abs(composite_trapezoid_value - f_exact)

montecarlo_error = abs(mcintegralfunction_value - f_exact)
