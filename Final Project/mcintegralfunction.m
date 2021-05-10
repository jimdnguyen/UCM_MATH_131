function I = mcintegralfunction(f,a,b,n)
tic
for i = 1:n
   
    % from matlab website In general, you can generate N random numbers in the interval (a,b) with the 
    % formula r = a + (b-a).*rand(N,1).

    randPoints = a + (b-a) .* rand(n,1);
    
    I = ((b-a)/n)* sum(f(randPoints));
  
end
toc
end
