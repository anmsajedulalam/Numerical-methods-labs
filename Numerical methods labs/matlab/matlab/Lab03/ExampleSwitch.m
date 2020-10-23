marks=input('Enter mark')
switch (marks>=0 & marks<=100);
    case(marks>=90 & marks<=100)
        grade='A'
    case(marks>=80 & marks<90)
        grade='B'
    case(marks>=60 & marks<80)
        grade='C'
    case(marks>=50 & marks<60)
        grade='D'
    otherwise 
        grade='F'      
disp(grade);
end  

     
        