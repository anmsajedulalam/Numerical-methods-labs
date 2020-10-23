x =[-180:80:180];
y = sin(x)+cos(x);

figure
plot(x,y)
xlabel('elements in vector x from -180 to 180');
ylabel('elements in vector y=sin(x)+cos(x)');
title('The Sine function from -180 to 180');
grid on