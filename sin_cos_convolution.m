clc;
close all;
clear all;
x1=[];
x2=[];
for n=0:0.01:40*pi;
    temp=sin(n);
    x1=[x1,temp];
end
for m=0:0.01:40*pi;
    temp1=cos(m);
    x2=[x2,temp1];
end

y=conv(x1,x2);
subplot(2,2,1);
plot(x1);
xlabel('t');
ylabel('sin(t)')
title('plot of sin(t)')

subplot(2,2,2);
plot(x2);
xlabel('t');
ylabel('cos(t)');
title('plot of cos(t)')

subplot(2,1,2);
plot(y);
xlabel('t')
ylabel('y(t)')
title('convolution output')
