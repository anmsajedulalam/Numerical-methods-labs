function [root,ea,iter]=bisection(f,xl,xu,es,maxit)
iter=0;
xmold=xl;
while(1)
    if f(xl)*f(xu)>0
        disp('Error');
        break;
    end
    
    xm=(xl+xu)/2;
    if(f(xl)*f(xm)>0)
        xl=xm;
    elseif(f(xl)*f(xm)<0)
        xu=xm;
    else
        root=xm;
        break;
    end
    iter=iter+1;
    if xm~=0
        ea=abs((xm-xmold)/xm)*100;
    end
    xmold=xm;
    if ea<=es || iter>=maxit
        break;
    end
    
end
root=xm;
end
%[root,ea,iter]=bisection(@(x) x^3-0.165*x^2+3.993*10^-4,0,.11,.001,10)