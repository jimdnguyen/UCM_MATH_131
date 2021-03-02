%initialize everything
f = @(x) 2*x*cos(x) + x;
fp = @(x) 2*cos(x) - 2*x*sin(x) + 1;
g = @(x) -2*x*cos(x);
a = 1;
b = 10;
tol = 10^-10;
N = 100;
x0 = 2;
x1 = 1;

%call the root finding methods
[c1,n1,err1] = bisection_method(f,a,b,tol,N);
[c2,n2,err2] = fixed_point_iteration(g,x0,tol,N);
[c3,n3,err3] = Newtons_method(f,fp,x0,N,tol);
[c4,n4,err4] = secant_method(f,x0,x1,N,tol);

clf; % clear figure
plot(c1,f(c1),'k+',c2,f(c2),'bs',c3,f(c3),'rx',c4,f(c4),'gd')
legend('bisection','fixed point',"Newton's",'secant')
xlabel('x')
ylabel('y')