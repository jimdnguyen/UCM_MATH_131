function y = mysum(n)
% MYSUM is a function that takes in as input n and returns the value y which is
% equivalent to the sum of the integers from 1 to n.
%{
Write a Matlab function, called mysum that inputs the integer n and outputs 
the sum of the first n positive integers. 
If a negative n is input, make sure to return the value -1 
and print the following statement to the user: 'cannot input a negative number'. 
Use a for loop to compute the sum - don’t use Matlab’s built in function. 
Your function should look like:function y=mysum(n)
where n is the number you stop the sum at and y is the returned sum. 
You can check your code in Matlab (NOT MATLAB GRADER) by typing the following into the command line:
myresult = mysum(3)and check that myresult is equivalent to 1+2+3
%}
if n < 0 
    y = -1;
    disp('cannot input a negative number')
else
    y = 0;
    for i = 1:n
       y = y + i;
    end    
end

end
   

