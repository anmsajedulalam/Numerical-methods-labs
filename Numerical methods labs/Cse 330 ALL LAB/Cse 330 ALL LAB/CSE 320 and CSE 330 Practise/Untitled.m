theta = [-pi:0.1:pi];
y = sin(theta)+cos(theta);


figure
plot(theta,y);
thetalabel('elements in vector theta from \-pi to \pi'); 
ylabel('elements in vector y = sin(theta)+cos(theta)'); 
title('The sine and cos function from \-pi to \pi');
grid on