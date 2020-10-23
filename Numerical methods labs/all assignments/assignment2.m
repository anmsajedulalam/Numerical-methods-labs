A=[5-2i 2+3i 5 5+2i 2-3i]
disp(A);
Q=poly(A);
disp(Q);
P=poly2sym(Q);
disp(P);
R=polyval(Q,[2]);
disp(R);