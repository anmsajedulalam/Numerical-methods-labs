num=input('Enter value to compute factorial: ');
x=1;
fact=1;
while(x<=num)
   fact=fact*x;
   x=x+1;
end
disp('Factorial is: '), disp(fact);