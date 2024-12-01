clc;
clear;
close all;

% Specifications
rp = 1;      % Passband ripple (dB)
rs = 40;     % Stopband attenuation (dB)
wp = 300;    % Passband frequency (Hz)
ws = 200;    % Stopband frequency (Hz)
fs = 1000;   % Sampling frequency (Hz)

% Normalize frequencies
w1 = wp / (fs / 2);
w2 = ws / (fs / 2);

% Design High-Pass IIR filter
[n, wn] = buttord(w1, w2, rp, rs);
[b, a] = butter(n, wn, 'high');

% Frequency response
freqz(b, a);

% Add titles
subplot(2, 1, 1);
title('Magnitude Response of IIR HPF');
subplot(2, 1, 2);
title('Phase Response of IIR HPF');
