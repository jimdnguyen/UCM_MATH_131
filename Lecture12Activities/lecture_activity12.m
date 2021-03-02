%% Lecture Activity 12

% NAMES OF GROUP MEMBERS HERE: Jim Nguyen, Karina Solorio, Darren Correa

% This script estimates the derivative of f'(1.8) for f=ln(x) using the
% 3-point endpoint rule and the 3-point midpoint rule for h=0.1

% Define f(x) here (fill in *****)
h = 0.1;
x0 = 1.8;
f = @(x) log(x); 
est_3ptendpoint = 1/(2 * h) *(-3 * f(x0) + 4 * f(x0 + h) - f(x0 + 2 * h));
est_3ptmidpoint = 1/(2 * h) * (f(x0 + h) - f(x0 -h));
true_solution = 1/1.8;

% Calculate the relative error between the true solution and your estimated
% solutions

% h^2 / 3 f^(3)(E0) E0 exists [x0,x0 + 2h] -> 3pt endpoint
% -h^2/6 f^(3)(E0) E0 exists [x0 - h, x0 +h] -> 3pt midpoint 
% have no clue how to translate this into code

err_3ptendpoint = abs(true_solution - est_3ptendpoint);
err_3ptmidpoint = abs(true_solution - est_3ptmidpoint);

% If time, repeat for different values of h, h=0.05, 0.01. What happens to
% the error?

%error for 0.1
% 0.0010 -> 3ptendpoint
% 5.7262e^-04 -> 3ptmidpoint