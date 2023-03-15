clear;
x=input("Enter x: ");
y=input("Enter y: ");
n=length(x);
ny=length(y);
d=zeros(n);
if n<>ny then
    mprintf("No. of elements of x and y must be same");
    abort;
end
for i=1:n
d(i,1)=y(i);
end
for i=2:n
for j=i:n
d(j,i)=d(j,i-1)-d(j-1,i-1);    
end
end
printf("Difference Table\n");
disp(d)
x1=input("Enter the value of x for which y is to be found :")
h=x(2)-x(1);
u=(x1-x(1))/h;
res=y(1);
for i=1:n-1
    f=1;
    for k=1:i
        f=f*k;
    end
    p(i)=1.0;
    for j=0:i-1
        p(i)=p(i)*(u-j);
    end
p(i)=p(i)/f;
end
    for i=1:n-1
    res=res+p(i)*d(i+1,i+1);
    end
    printf("required interpolating value is %f ",res);

