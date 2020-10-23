function[root,ea,iter]=bisect(f,xi,xf,es,maxit)
%for the very first iteration there isn't any ea, so I calculated it
%seperately
xmold=(xi+xf)/2;
if f(xi)*f(xmold)<0
       xf=xmold;
end
if f(xi)*f(xmold)>0
      xi=xmold; 
end
if f(xi)*f(xmold)==0
      root=xmold;
end
iter=1;   
while(1)
   xm=(xi+xf)/2;
   ea=abs(((xm-xmold)/xm))*100;
   xmold=xm;
   iter=iter+1;
   if f(xi)*f(xm)<0
       xf=xm;
   end
   if f(xi)*f(xm)>0
      xi=xm; 
   end
   if f(xi)*f(xm)==0
      root=xm;
      break;
   end
   if iter>= maxit
      root=xm;
      break 
   end
   if ea<=es
      root=xm;
      break;
   end
   
       
end