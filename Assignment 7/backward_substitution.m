function x = backward_substitution(U,f)
% backward substitution for an upper triangular matrix
G = [U,f];
 n = size(f,1);
 x = zeros(n,1);

 for i = n:-1:1
    x(i) = G(i,i+1)/G(i,i);
 end

end