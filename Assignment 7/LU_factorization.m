function [L,U] = LU_factorization(A)

n = size(A,1);
x = zeros(n);
for i = 1:n
   x(i,i) = 1;
end
for i = 1:n-1
    for j = i+1:n
        if A(i,i) == 0
            for h = i:3
               if A(h,j) == 0
                   A([(h+1) i],:) = A([h (h+1)],:)
                   
               end
            end
           
               
        end
        m1 = A(j,i)/A(i,i);
        x(j,i) = m1;
        A(j,:) = A(j,:) - m1 * A(i,:);
    end
end
U = A;
L = x;
end