% define matrix A and vector b. 
A= [6 18 3;2 12 1;4 15 3];
b=[3 19 0]';

% augment matrix and call it G
G=[A,b];

% do row reduction on G
G(2,:)= 3*G(2,:) - G(1,:);  % use r1 to remove entry in column 1 row 2
G(3,:)= 3*G(3,:) -  2*G(1,:); % use r1 to remove entry in column 1 row 3
G(3,:)= 2*G(3,:) -  G(2,:); % use r2 to remove entry in column 2 row 3
G(2,:) = (1/3) * G(2,:);
G(3,:) = (1/6) * G(3,:);

% rename G as U to signify it is the upper triangular matrix
U=G

% now do the backwards substiution to find x, starting with x(3)
x(3) = U(3,4) / U(3,3);
x(2) = (U(2,4) - U(2,3)*x(3))/U(2,2);
x(1) = (U(1,4) - U(1,2) * x(2) - U(1,3) * x(3))/U(1,1);
U(3,4)
