disp('how many row and column?');
r=input('row: ');
c=input('column: ');
a=[];
for i=1:r
    disp('enter first row :');
    for j=1:c
    a(i,j)=input('enter value :');
    end
end
for i=1:r
    b(i,1)=input('enter constant :');
end
x=a\b;
disp(x);
    