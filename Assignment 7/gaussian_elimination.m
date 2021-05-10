function [U,f] = gaussian_elimination(A,b)
% performs gaussian elimination on the augmented matrix [A,b], returning
% the upper-triangular matrix U (from A) and the updated vector f (from b)

n = size(A,1);
G = [A,b];
for i = 1:n-1
    for j = i+1:n
        if A(i,i) == 0
            for h = i:3
               if A(h,j) == 0
                   A([(h+1) i],:) = A([h (h+1)],:)
                   G([(h+1) i],:) = G([h (h+1)],:)
               end
            end
           
               
        end
        m1 = A(j,i)/A(i,i);
        m2 = G(j,i)/G(i,i);
        A(j,:) = A(j,:) - m1 * A(i,:);
        U = A;
        G(j,:) = G(j,:) - m2 * G(i,:);
    end
end
f = G(:,end);

end
