%% solution of DSP LAB 
% 1- read the audio file  
clear;
clc;
[X,Fs]= audioread('whistle.wav');
N = length(X);
time = N/Fs;
sound(X,Fs,16);
pause(time);
t = linspace(0,time,N);
plot(t,X)
% 2- analysis 
X_k = abs(fft(X)); % calculate absolute of fft
f = linspace(0,Fs,N); % discretize frequency
figure(2);plot(f,X_k),grid;
title('Amplitude Spectrum of x(t)')
txt = {'Yehia Hamada Mohamed Yehia'};
text(20000,2300,txt)
xlabel('Frequency (Hz)')
ylabel('|X(f)|')
% 3- choose the type of filter 
%% Band stop filter  [ 490 510]
% 4- design the filter 
     n = 4; 
    [b,a] = butter(n, [490 510]/(Fs/2), 'stop');
% 5- Check  filter stability 
     disp('Filter1 stability');
     isstable(b,a)
% 6- freq response of first filter 
       f = (0:.001:1)*Fs/2;
       H = freqz(b,a,f,Fs);
       figure(3);plot(f,abs(H)),grid;
       title('Amplitude Spectrum of x(t)')
       txt = {'Yehia Hamada Mohamed Yehia'};
       text(20000,2300,txt)
       xlabel('Physical Frequency f (Hz)')
       ylabel('Frequency Responce |H|')
% 7- Apply first filter 
       y = filter(b,a,X); 
       sound(y,Fs,16);
       pause(time);
% 8- draw the output after first filter 
    Y_F1 = abs(fft(y)); % calculate absolute of fft
    N = length(y);
    f = linspace(0,Fs,N); % discretize frequency
    figure(4);plot(f,Y_F1),grid;
    title('Amplitude Spectrum of x(t)')
    txt = {'Yehia Hamada Mohamed Yehia'};
    text(20000,1100,txt)
    xlabel('Frequency (Hz)')
    ylabel('|X(f)|')
%% Band stop filter  [ 1490 1510]
% 9- design the filter 
     n = 4; 
    [b,a] = butter(n, [ 1490 1510]/(Fs/2), 'stop');
% 10- Check  filter stability 
     disp('Filter2 stability');
     isstable(b,a)
     %
% 11- freq response of first filter 
       f = (0:.001:1)*Fs/2;
       H = freqz(b,a,f,Fs);
       figure(5);plot(f,abs(H)),grid;
       title('Amplitude Spectrum of x(t)')
       txt = {'Yehia Hamada Mohamed Yehia'};
       text(20000,500,txt)
       xlabel('Physical Frequency f (Hz)')
       ylabel('Frequency Responce |H|')
       
       
% 12- Apply sec filter 
       y = filter(b,a,y); 
       sound(y,Fs,16);
       pause(time);
 % 13- draw the output after Second filter 
    Y_F1 = abs(fft(y)); % calculate absolute of fft
    N = length(y);
    f = linspace(0,Fs,N); % discretize frequency
    figure(4);plot(f,Y_F1),grid;
    title('Amplitude Spectrum of x(t)')
    txt = {'Yehia Hamada Mohamed Yehia'};
    text(20000,500,txt)
    ylim([0 600])
    xlabel('Frequency (Hz)')
    ylabel('|X(f)|')
