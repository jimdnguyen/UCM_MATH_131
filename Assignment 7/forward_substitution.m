function y = forward_substitution(L,b)
G = [L,b];
 n = size(f,1);
 y = zeros(n,1);

 for i = n:-1:1
    y(i) = G(i,i+1)/G(i,i);
 end

end