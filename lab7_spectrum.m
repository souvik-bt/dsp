clc;
clear;
close all;

% Parameters
N = 1024;        
fs = 8000;       
f = input('Enter the frequency [1 to 5000]: ');

% Signal generation
n = 0:N-1;
x = sin(2 * pi * (f / fs) * n);

% Power spectrum calculation
pxx = abs(fft(x)).^2 / N;

% Plot the power spectrum
freq = n * (fs / N); 
plot(freq, 10*log10(pxx)); 
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Power Spectrum of x(n)');
