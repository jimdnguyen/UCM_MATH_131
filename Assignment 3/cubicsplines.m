% define the data points
datx=[0,0.5,2,4];
daty=[1,exp(0.5),exp(2),exp(4)];

% obtain coefficients for cubic spline
[a,b,c,d]= cubic_spline_coefs(datx,daty);

% now create the cubic spline interpolation
x = 0:0.01:4;
spline=zeros(1,length(x));

for i = 1:length(x)
    if x(i) >= 0 && x(i) < 0.5
        spline(i) = a(1) + b(1) * (x(i) - datx(1)) + c(1) * (x(i) - datx(1))^2 + d(1) * (x(i) - datx(1))^3;
    end
    if x(i) >= 0.5 && x(i) < 2
        spline(i) = a(2) + b(2) * (x(i) - datx(2)) + c(2) * (x(i) - datx(2))^2 + d(2) * (x(i) - datx(2))^3;
    end
    if x(i) >= 2 && x(i) < 4
        spline(i) = a(3) + b(3) * (x(i) - datx(3)) + c(3) * (x(i) - datx(3))^2 + d(3) * (x(i) - datx(3))^3;
    end
    if x(i) >= 4 
        spline(i) = a(4) + b(4) * (x(i) - datx(4)) + c(4) * (x(i) - datx(4))^2 + d(4) * (x(i) - datx(4))^3;
    end
end