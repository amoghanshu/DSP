clc;
clear all;
close all;
x=input('enter the input sequence: ');
Z=xcorr(x,x);
disp('auto correlation sequence Rxx(n) is :');
disp(Z);
subplot(2,1,1);
stem(x);
xlabel('n');
ylabel('x(n)');
subplot(2,1,2);
stem(Z);
title('Auto correlation output');
xlabel('n');
ylabel('Z(n)');