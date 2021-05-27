%%this script for audio recording 
clear;
clc;
Fs = 8000; 
time = 5 ; 
recObj = audiorecorder(Fs,16,1);
disp('Start speaking.')
recordblocking(recObj,time);
disp('End of Recording.');
x = getaudiodata(recObj);
play(recObj);
N = length(x);
t = linspace(0,time,N);
plot(t,x)
audiowrite('Testfile.wav',x,Fs);
