clc;
clear all;
close all;
x1=input ('Enter the first sequence x1 (n)='); 
x2=input ('Enter the second sequence x2 (n)=');
y=conv (x1,x2);
disp('linear convolution of x1(n) and x2 (n) =');
disp(y)
subplot (2,2,1);
stem(x1)
xlabel('n');
ylabel('x1(n)');
title('plot of x1 (n)');
subplot (2,2,2);
stem(x2)
xlabel('n');
ylabel('x2(n)');
title('plot of x2(n)');
subplot (2,2,3);
stem(y)
xlabel('n');
ylabel('y(n)');
title('linear convolution output')