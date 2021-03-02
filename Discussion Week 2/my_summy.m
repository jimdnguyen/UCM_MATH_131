function total_sum = my_summy(n)
%MY_SUMMY calculates and returns the sum from k=1 to n of 1/k^2+2k
total_sum=0;
for k=1:n
    total_sum=total_sum+1.0/(k*k);  % add the first term
    total_sum=total_sum+2*k;       % add the second term
end

end

