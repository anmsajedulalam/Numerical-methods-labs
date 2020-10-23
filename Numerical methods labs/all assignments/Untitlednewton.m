n = 3;
x = [10,15,20,22.5];
y = [227.04,362.78,517.35,602.97];
xu = 16;
% formation first column of bracketed ‘f’ table 
j = 1;
for i = 1:(n+1) 
    f(i,j) = y(i);
end

% formation other columns of bracketed ‘f’ table
for  j = 2:(n+1)
for  i = 1:(n-j+2)
f(i,j) = (f(i+1,j-1) - f(i,j-1)) / (x(i+j-1)-x(i));
end
end
% formation of b1, b2, b3, b4……..bn+1  
for j = 1:(n+1)
b(j) = f(1,j);
end 

% determination of y value for the unknown x=xu

fxu = b(1);
for i = 2:(n+1)
prod(i) = 1.0;
for j = 1:(i-1)
prod(i) = prod(i)*(xu-x(j));
end
fxu = fxu + b(i) * prod(i);
end
disp('         b         t ');
for i = 1:(n+1)
    z(1)=b(i);
    z(2)=prod(i);
    disp(z);
end
disp('final result ');
disp(fxu);
