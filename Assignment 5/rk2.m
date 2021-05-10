function [y,t] = rk2(f,t0,tf,alpha,N)
   %function that computes solve the IVP using second order Runge-Kutta method
    %INPUTS: 
    %function f
    %initial condition alpha
    %bounds of interval [t0,tf]
    %N number of nodes used
    %OUTPUT: 
    %y the solution
    %t the time sequence
    
    y = zeros(N+1,1); % N intervals so N+1 points
    t = zeros(N+1,1);
    t(1) = t0;
    t(N+1) = tf;
    y(1) = alpha;
    dt = (tf-t0)/N;
    
    %creation of the nodes and time step
    
    for i = 2:N
        t(i) = t(i-1) + dt;
    end
    
    %creation solution via RK2 method
    for i = 2:N+1
        y(i) = y(i-1) + dt * (f((t(i-1)) + (dt/2) , y(i-1) + (dt/2) * f(t(i-1),y(i-1))));
    end
    
end