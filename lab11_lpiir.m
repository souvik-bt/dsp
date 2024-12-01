clc;
clear;
close all;

% Filter specifications
rp = 1;  % Passband ripple (dB)
rs = 40; % Stopband attenuation (dB)
wp = 300; % Passband frequency (Hz)
ws = 400; % Stopband frequency (Hz)
fs = 1000; % Sampling frequency (Hz)

% Normalize frequencies
w1 = wp / (fs / 2);
w2 = ws / (fs / 2);

% Design IIR filter
[n, wn] = buttord(w1, w2, rp, rs);
[b, a] = butter(n, wn, 'low');

% Frequency response
freqz(b, a);

% Add titles
subplot(2, 1, 1);
title('Magnitude Response of IIR Filter');
subplot(2, 1, 2);
title('Phase Response of IIR Filter');
