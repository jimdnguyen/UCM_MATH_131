function [y,t] = euler_system(f,g,t0,tf,alphas,N)
    %function that computes the solution to the system of IVPs
    % y1'=f(t,y1,y2) 
    % y2'=g(t,y1,y2)
    % y1(t0)=alpha(1), y2(t0)=alpha(2), over the interval [t0,tf] with N steps.
    %INPUTS: 
    % function f for y1'
    % function g for y2'
    % initial conditions alpha =[y1(t0),y2(t0)]
    % bounds of interval [t0,tf]
    % N number of nodes used
    %OUTPUT: 
    % Y the solution
    % t the time steps
    
    y = zeros(N+1,2); % N intervals so N+1 points
    t = zeros(N+1,1);
    t(1) = t0;
    t(N+1) = tf;
    y(1,1) = alphas(1);    
    y(1,2) = alphas(2);
    dt = (tf-t0)/N;
    
    %creation of the nodes and time step
    
    for i = 2:N
        t(i) = t(i-1) + dt;
    end
    
    %creation solution via Euler's method
    
     for i = 2:N+1
        y(i,1) = y((i-1),1) + (dt * (f(t(i-1) , y((i-1),1) , y((i-1),2))));
        y(i,2) = y((i-1),2) + (dt * (g(t(i-1) , y((i-1),1) , y((i-1),2))));
     end
end