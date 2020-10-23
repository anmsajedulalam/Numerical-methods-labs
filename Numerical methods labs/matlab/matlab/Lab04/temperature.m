function[a]=temperature(ti,tf)
row=1;
for m=ti:1:tf
    a(row,1)=m;
    a(row,2)=((9/5)*m+32);
    row=row+1;
end