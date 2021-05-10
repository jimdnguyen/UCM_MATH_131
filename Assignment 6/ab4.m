function [y,t] = ab4(f,t0,tf,alpha,N)
   %function that computes solve the IVP using four step Adams-Bashforth method
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

    %use RK4 for the first steps
    for i = 2:5
        k1 = dt * f(t(i-1),y(i-1));
        k2 = dt * f((t(i-1)) + (dt/2), y(i-1) + (1/2) * k1);
        k3 = dt * f(t(i-1) + dt/2,y(i-1) + 1/2 * k2);
        k4 = dt * f(t(i-1) + dt, y(i-1) + k3);
        y(i) = y(i-1) + 1/6 * (k1 + 2 * k2 + 2 * k3 + k4);
    end

    %use AB4 for the rest
    
    for i = 6:N+1
       y(i) = y(i-1) + (dt/24) * (55 * f(t(i-1),y(i-1)) - 59 * f(t(i-2),y(i-2)) + 37 * f(t(i-3),y(i-3)) - 9 * f(t(i-4),y(i-4)));
    end
    
    1 - y
    

end