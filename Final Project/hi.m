N = 10000000;
n = N;
s = 0;
i = 0;
maxl = 0;
f = 0;
while n > 0
    s = s + rand;
    i = i + 1;
    if s > 1
        if i > maxl
            f(i) = 1;
            maxl = i;
        else
            f(i) = f(i) + 1;
        end
        i = 0;
        s = 0;
        n = n - 1;
    end
end

%disp ((1:maxl)*f'/sum(f))
%bar(f/sum(f))
%grid on

f/sum(f)