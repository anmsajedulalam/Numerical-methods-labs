function yy=Newton_int(x,y,xx)
n=length(x);
if length(y)~=n,error('x and y must be same length')
end
b=zeros(n,n);
b(:,1)=y';
for p=1:length(xx)
    for j=2:n
        for i=1:n-j+1
            b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
        end
    end
    xt=1;
    yy(p)=b(1,1)
    for j=1:n-1
        xt=xt*(xx(p)-x(j));
        yy(p)=yy(p)+b(1,j+1)*xt;
    end
end