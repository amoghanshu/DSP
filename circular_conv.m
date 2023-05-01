clc;
clear all;
close all;
xn=input('Enter the first sequence x(n)=');
hn=input('Enter the second sequence h(n)=');
l1=length(xn);
l2=length(hn);
N=max(l1,l2);
xn=[xn,zeros(1,N-l1)];
hn=[hn,zeros(1,N-l2)];
for n=0:N-1;
    y(n+1)=0;
    for k=0:N-1;
        i=mod((n-k),N);
        y(n+1)=y(n+1)+hn(k+1)*xn(i+1);
    end;
end;
disp('Circular convolution in time domain =');
disp(y);
subplot(2,2,1);
stem(xn)
xlabel('n');
ylabel('x(n)');
title('plot of x1(n)');
subplot(2,2,2);
stem(hn)
xlabel('n');
ylabel('h(n)');
title('plot of x2(n)');
subplot(2,2,3);
stem(y)
xlabel('n');
ylabel('y(n)');
title('Circular convolution output')
