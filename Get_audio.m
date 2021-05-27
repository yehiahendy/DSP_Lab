%%this script for getting audio form user  
clear;
clc;
[X,Fs]= audioread('Tom.wav');
sound(X,Fs,16);
N = length(X);
time = N/Fs;
t = linspace(0,time,N);
plot(t,X)