function yy=lagrange_intbyme(x,y,xx);
n=length(x);
if(length(y)~=n)
    disp('error')
else
    for p=1:length(xx)
        s=0;
        for i=1:n
            product=y(i);
            for j=1:n
                if(i~=j)
                    product=product*(xx(p)-x(j))/(x(i)-x(j));
                end
            end
            s=s+product;
        end
        yy(p)=s;
    end
end

                
                