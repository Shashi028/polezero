clc
close all
clear all
b=[1 0];
a=[1 -0.5];
sys=tf(b,a,[],'variable','z')
w=0:pi/6:pi;
[h]=freqz(b,a,w);
subplot(2,1,1);
plot(w,abs(h));
xlabel('Frequency in rad/sec');
ylabel('Magnitude');
title('Magnitude Response');
subplot(2,1,2)
plot(w, angle(h));
xlabel('Frequency in rad/sec');
ylabel('Phase');
title('Phase Response');