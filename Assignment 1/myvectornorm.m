function norm = myvectornorm(x)
% calculate the norm

lengthVector = length(x) + 1;

counter = 1;
tmpValue = 0;

while counter ~= lengthVector
    tmpValue = tmpValue + x(counter)^2;
    counter = counter + 1;
end

norm = sqrt(tmpValue);

end