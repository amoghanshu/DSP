clc;
clear all;
close all;
y=input('input sequence y(n) of the system=');
x=input('input sequence x(n) of the system=');
N=input('enter the length of impulse response=');
h=impz(x,y,N);
disp('Impulse response of system h(n) :'):
disp(h);
n=0:1:N-1;
stem(n,h);
xlabel('n');
ylabel('h(n)');
title('Impulse respone');
