% function to integrate
f = @(x)exp(x);
% interval
a = 0;
b = 4;
% numebr of samples
N = logspace(1,8,8);
% preallocation
intMC = zeros(size(N));
% integral value
for i = 1:length(N)
    
    % samples
    xS = a+(b-a)*rand(N(i),1)
    
    % Monte Carlo integration
    intMC(i) = (b-a)*sum(f(xS))/N(i);
end
% exact integration
fsym = sym(f);
syms x
intEx = vpaintegral(sym(f),x,[a b]);
% relative error
relErr = abs((intMC-intEx)/intEx);
% plot results
figure
loglog(N,relErr)
xlabel('number of samples')
ylabel('relative error')