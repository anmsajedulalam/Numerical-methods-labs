function  y=sumofseries(r,n)
Sum=1;
for i=1:n
    Sum=Sum+r^i;
end
y=Sum;
