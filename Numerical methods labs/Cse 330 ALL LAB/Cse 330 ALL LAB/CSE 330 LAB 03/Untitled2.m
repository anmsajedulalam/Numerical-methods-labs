function y=average(x)
L=length(x);
Sum=0;
for i=1:1:L
    Sum=Sum+x(i);
end
Result=Sum/L;
