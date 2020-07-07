function [t,y]=chirpGen()

tmax=10e-2;
fs=6e4;
xmax=0.5;
f1=0.5e3;
f2=5e3;
t=linspace(0,tmax,4500);
tt=mod(t,tmax);
y=xmax*chirp(tt,f1,tmax,f2);



