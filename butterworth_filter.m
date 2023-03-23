clc;
clear all;
close all;
fp=input('Enter the pass band frequency in Hz:');
fs=input('Enter the stop band frequeny in Hz :');
Fs=input('Enter the sampling frequency in Hz :');
Ap=input('Enter the pass band ripple in db :');
As=input('Enter the stop band ripple in db :');
wp=2*pi*fp/Fs;
ws=2*pi*fs/Fs;
Up=2*tan(wp/2);
Us=2*tan(ws/2);
[n,wc]=buttord(Up,Us,Ap,As,'s');
disp('Order of the filter N=');
disp(n);
disp('Normalized cut off frequency =');
disp(wc);
[num,den]=butter(n,wc,'s');
[b,a]=bilinear(num,den,1);
freqz(b,a,512,Fs);
printsys(b,a,'z')

