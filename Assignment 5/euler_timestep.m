function [y,t] = euler_timestep(f,t0,tf,alpha,N)
    %function that computes the solution to the IVP y'=f, y(t0)=alpha, over the interval [t0,tf] with N steps.
    %INPUTS: 
    %function f
    %initial condition alpha
    %bounds of interval [t0,tf]
    %N number of nodes used
    %OUTPUT: 
    %Y the solution
    %t the time steps
    
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
    
    %creation solution via Euler's method
    for i = 2:N+1
        y(i) = y(i-1) +(dt * (f(t(i-1) , y(i-1))));
    end
    
    plot(f,y)

end
