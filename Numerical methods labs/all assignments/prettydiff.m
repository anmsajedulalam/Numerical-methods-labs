syms x;
fun=x^3+3*x+2;
d=diff(fun,x);
pretty(fun)
pretty(d)
e=int(fun,x);
pretty(e)