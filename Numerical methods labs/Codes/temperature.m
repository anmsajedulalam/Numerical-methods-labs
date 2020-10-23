 function [a b c] = temperature(x,y,z)
 
 fprintf(x), fprintf('degree celcius in fahrenhiet'); 
 a = 9*x/5 + 32;
 
disp(y),disp( 'degree celcius in fahrenhiet') ;
b = 9*y/5 + 32; 
disp(z),disp( 'degree celcius in fahrenhiet'); 
c = 9*z/5 + 32; 
 
%run with
%[a b c]=temperature(1,2,3)

 
