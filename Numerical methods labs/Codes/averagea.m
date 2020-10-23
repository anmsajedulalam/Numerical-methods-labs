function y=averagea(x)
L=length(x);

sum=0;
for i=3:1:L
    sum=sum+x(i);
end
y=sum/L;
    