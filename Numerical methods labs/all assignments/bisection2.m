    f = @(x)(x^3 + 6 * x^2 - 7 * x - 60); 
    while 1
        xl = input('Enter the value of xl: ');
        xu = input('Enter the value of xu: '); 
        if (f(xl)*f(xu)<0) 
            disp('The xl and xu encompass atleast one root');
            break;
        end
        disp ('The xl and xu do not encompass the root');
        disp ('Enter a new set');
    end
    maxcount = input('Enter the value of maximum number of count: ');
    eps = input('Enter the value of epsilon (%): ');
    count=0;
    xmold=xl;
    disp( '     Count      Xl        Xu        Xm      f(Xl)     f(Xm)    fXl*fXm  % Error  ')
while count<maxcount
        xm=(xl+xu)/2;
        err=abs((xm-xmold)*100/xm);
        xmold=xm;
        Y(1)=count;
        Y(2)=xl;
        Y(3)=xu;
        Y(4)=xm;
        Y(5)=f(xl);
        Y(6)=f(xm);
        Y(7)=Y(5)*Y(6);
        Y(8)=err;
        disp (Y);
if (f(xl)*f(xm)<0) 
            		xu=xm;
        	else
            		xl=xm;
        	end
        	if (abs(f(xl)*f(xm))<1.0e-10)
            		break
        	end
        	if err <= eps
            		break;
        	end
        	count=count+1;
    end
    
	if  count == maxcount && err>eps
       	disp ('no convergence');
    	end
