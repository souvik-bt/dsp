clc;
clear;
close all;

% Parameters
n = 20;         % Filter order
fp = 200;       % Cutoff frequency (Hz)
fs = 1000;      % Sampling frequency (Hz)

% Design the filter
b = fir1(n, fp/(fs/2), blackman(n+1)); % FIR filter with Blackman window

% Frequency response
freqz(b, 1, 128);

% Add titles to the plots
subplot(2, 1, 1);
title('Magnitude Response of LPF');
subplot(2, 1, 2);
title('Phase Response of LPF');
