function y = myabsolutevalue(a)
% myabsolutevalue is a function that takes a number as input and returns
% the absolute value of that number
%{

%}
if a > 0
    y = a;
elseif a < 0
    y = -a;
else
    y = 0;
end
end
