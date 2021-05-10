function [y,t] = rk4(f,t0,tf,alpha,N)
   %function that computes solve the IVP using four order Runge-Kutta method
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
    
    %creation solution via RK4 method
    
    for i = 2:N+1
        k1 = dt * f(t(i-1),y(i-1));
        k2 = dt * f((t(i-1)) + (dt/2), y(i-1) + (1/2) * k1);
        k3 = dt * f(t(i-1) + dt/2,y(i-1) + 1/2 * k2);
        k4 = dt * f(t(i-1) + dt, y(i-1) + k3);
        y(i) = y(i-1) + 1/6 * (k1 + 2 * k2 + 2 * k3 + k4);
    end

end