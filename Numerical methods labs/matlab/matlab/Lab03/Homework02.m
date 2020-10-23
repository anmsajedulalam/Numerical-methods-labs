max_iter=100;
tol=0.001;
x=0;
p(1)=0;
for k=1:max_iter
   p(k+1)=sqrt(sin(p(k)+0.15));
   err=abs((p(k+1)-p(k))/p(k+1));
   if(err<tol)
       soln=p(k+1);
       break
   end
end
soln=p(k+1)