
%functions
1.

function sum = addNumbers(x,y)
sum = x+y;
end


%here we have to save the file with function Name 

%or else we have to first save the script as want and after that only 
%we have to type the function then we dont have to as same as function name

%if we call the function in command window we can call with file name


output:
%in command window 
result=addNumbers(4,5)

result =

     9


%if we save the file as functions

result=functions(1,3)

result =

     4

2.
%getting multiple outputs in one function
function [add,sub,mul] = operations(a,b)
    add=a+b;
    sub=a-b;
    mul=a*b;
end

output:
 [add,sub,mul]=operations(5,6)

add =

    11


sub =

    -1


mul =

    30

3.
%
function greet(name)
    disp(['Hello ',name]);

   %sprintf('Hello: %s', name) we can use this also
end

Output:
greet('Zainab')
Hello Zainab

4.
%no input
function pivalue=getPi()
 pivalue = 3.14;
end


Output:
getPi()

ans =

    3.1400

5.
%to display a massage only

function myFunction()
disp('hello, this function has no I/O');
end

Output:
myFunction()
hello, this function has no I/O


6.
%fin factorial for a user input number without function
num=input('Enter a number to find factorial: ');
fact=1;

for i=1:num
    fact=fact*i;
end

fprintf('Factorial of %d is: %d\n', num, fact);

output:
Enter a number to find factorial: 6
Factorial of 6 is: 720

7.
%factorial using function in matlab
function result = factorial(n)
    if n == 0 || n==1
        result = 1;
    else
        result = n * factorial(n - 1);
    end
end

output:
factorial(4)

ans =

    24