%% this script for creating white noise 
clear;
clc;
Fs = 44100; 
time = 1 ; 
N = Fs * time;
X = rand(1,N)*2 -1;
t = linspace(0,time,N);
sound(X,Fs,16);
plot(t,X)
grid ;
xlim([0 ,.01])