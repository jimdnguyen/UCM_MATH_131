% This script is meant to define two functions and plot them in different
% colors 

f1 = @(x)(x.^2-2*x+1); %define function 1
f2 = @(x)(exp(x)-x.^3);  % define function 2

% evaluate functions over the interval -1 to 1 in increments of 0.01
x=linspace(-1,1,201); % This will give us points with increments of 0.01
% (1 - (-1))/0.01 + 1

f1eval=f1(x);
f2eval=f2(x);

% plot 
plot(x,f1eval,'red')
hold on
plot(x,f2eval,'b')
legend('f1', 'f2')
title('f1 and f2 plotted')
