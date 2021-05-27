%% this script for Generating sinosoidal signal 
%% X = A cos(2*pi*f0*t)
clear;
clc;
Fs = 8000; 
time = 1 ; 
A = .8;
f0 = 300;
t = 0 : (1/Fs) : time;
X = A*sin(2*pi*f0*t);
N = length(X);
sound(X,Fs,16);
plot(t,X)
grid ;
xlim([0 ,.01])

