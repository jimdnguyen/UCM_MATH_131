%got help from this matlab forum https://www.mathworks.com/matlabcentral/answers/488128-monte-carlo-integration-of-sin-x
%also got help from this slides 5 http://ta.twi.tudelft.nl/mf/users/oosterle/oosterlee/lec8-hit-2009.pdf
N = 10000;
fx = @(x,y)(exp(x));
a = 0;
b = 4;
tic
for i = 1:N
   
    % from matlab website In general, you can generate N random numbers in the interval (a,b) with the 
    % formula r = a + (b-a).*rand(N,1).

    randPoints = a + (b-a) .* rand(N,1);
    
    fx_approx = ((b-a)/N)* sum(fx(randPoints));
  
end
toc

fx_approx;
fx_exact = integral(fx,a,b);

err = abs(fx_exact - fx_approx);

