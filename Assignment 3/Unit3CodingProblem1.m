%Problem 1
f = @(x) exp(-x.^2); %e^(-x^2)
dx = [0.5,0.2,0.1,0.05];

n = length(dx);
time_Lagrane = zeros(1,n);
time_Newtons = zeros(1,n);

for i = 1:n
    datx = [-3:dx(i):3];
    daty = f(datx);
    x = [-3:0.02:3]';%has to be a column vector
    tic %compute CPU Time
    [y1,~] = Lagrange_poly(x,datx,daty);
    time_Lagrane(i) = toc;
    
    tic
    [y2,~] = Newtons_divided_differences(x,datx,daty);
    time_Newtons(i) = toc;        
end

plot(dx,time_Lagrane, 'r',dx,time_Newtons,'k-')
xlabel('Increment in x values')
ylabel('CPU time(seconds)')
legend('Lagrange(CPU)', 'Newtons(CPU)')

figure
plot(x,y1,'b*-',x,y2,'m-')
hold on
scatter(datx,daty,'filled','g')
hold off
xlabel('x')
ylabel('y')
legend('Lagrange','Newtons','Data')
ylim([-3,3])