A=[-2 4 -6 0 2 8 9];
sum=0;
N=length(A);
Average=mean(A);
i=1;
while(i<N+1)
    j=(A(i)-Average).^2;
    sum=sum+j;
    i=i+1; 
end
Sigma=sum/(N-1)
disp(Sigma);
disp(var(A));