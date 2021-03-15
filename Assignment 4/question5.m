%%
% *Assignment 5*
%Name: Jim Nguyen
%Date: 3/13/2021

%%
% *Part a*
%Estimate the derivative of the function at the point x = 1 using 3-point midpoint formula for the
%following values of h: h = 10−n for n going from 16 by integers to 1 (e.g., h = 10−1
%Plot the step size h versus the relative error in a loglog plot. 
%On the same figure, plot the estimated truncation error for those same h values in red. 
%(Hint: Try plotting the 3rd derivative to figure out for which ξ value the the third derivative will be maximum at! )

%the code for part a

f = @(x) sin(x);
dddf = @(x) -cos(x); % the third derivative of sin(x) is -cos(x)
x = 1; % the pt we are estimating the derivative of the function
h = [10^-1,10^-2,10^-3,10^-4,10^-5,10^-6,10^-7,10^-8,10^-9,10^-10,10^-11,10^-12,10^-13,10^-14,10^-15,10^-16]; % the multiple values of h
CD3 = zeros(1,16);
CD3_truncation_error = zeros(1,16);
CD3_relative_error = zeros(1,16);

for i = 1:16
    CD3(i) = (1/(2*h(i)) * (f(x + h(i)) - f(x - h(i))));
    
    maxdddf = max(dddf(h(i))); % finds ths max value of all the elements
    indexOfFirstMax = find(dddf(h) == maxdddf,1,'first'); % gets the first element that is the max value
    E = h(indexOfFirstMax); % gets the x value at the index
    
    CD3_truncation_error(i) = -h(i)^2 / 6 * dddf(E);
    CD3_relative_error(i) = abs(dddf(x) - CD3(i)) / abs((dddf(x)));
end

loglog(h,CD3_relative_error,'y'); % this is plotting the step size h verus relative error in a loglog plot
hold on
loglog(h,CD3_truncation_error,'r'); % this is just plotting the estimated truncation error for same h in red.
hold off
grid on

%%
% *Part b*
% We can see that as h grows smaller, then the error decreases. This can be
% seen in the red line. The yellow line at the very top of the graph
% shows the truncation error with this formula. 
% As you can see, it looks really good since the truncation error
% isn't moving around and in general a horizontal line. The actual error
% does follow the truncation error estimate I would assume since the
% truncation error isn't moving around and is just mainly a straight line.
