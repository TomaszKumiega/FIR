function [t,y]=sinGen()

Fs=5000;
t=linspace(0,1.5,Fs*1.5);

x1=0.5*sin(300*2*pi*t)
x2=0.4*sin(4600*2*pi*t)

y=x1+x2;

