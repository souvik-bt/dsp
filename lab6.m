clc;
clear;

% Parameters
fs = 500; 
t = 0:1/fs:2; 
HR = 60;

P = 0.1 * exp(-((t - 0.2) / 0.1).^2);
QRS = -1.0 * exp(-((t - 0.5) / 0.05).^2);
T = 0.5 * exp(-((t - 0.8) / 0.2).^2);

% ECG Signal
ECG = repmat(P + QRS + T, 1, ceil(length(t) / (fs * 60/HR)));
ECG = ECG(1:length(t));

% Plot
plot(t, ECG, 'r');
title('ECG Signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
grid on;

