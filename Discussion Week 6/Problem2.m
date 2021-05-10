A = [1,2,3;4,5,6;7,8,9;10,11,12]

%b = [-2;1;0]

b = [-2 1 0]'

%c = [8;9;4;2]

c = [8 9 4 2]'

D = [1,2,3;4,5,6]

E = [1 2;3 4;5 6]

F = [1 2 3;4 5 6;7 8 9]

A * b % 4 x 3 3 x 1

% A * c error 4 x 3 4 x 1

A

% A * D error

E

A * E % 4 x 3 3 x 2

size(A) % 4 num cols 3 num rows

size(E) % 3 num cols 2 num rows

F^2 % F * F 

F.^2 % just using the scalars in the matrix and squaring them






