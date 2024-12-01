clc;
clear;
close all;

% Parameters
n = 20;         % Filter order
fp = 300;       % Cutoff frequency (Hz)
fs = 1000;      % Sampling frequency (Hz)

% Design the high-pass filter
b = fir1(n, fp/(fs/2), 'high', blackman(n+1));

% Frequency response
freqz(b, 1, 128);

% Add titles to the plots
subplot(2, 1, 1);
title('Magnitude Response of HPF');
subplot(2, 1, 2);
title('Phase Response of HPF');
