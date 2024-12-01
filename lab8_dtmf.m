clc;
clear;
close all;

% Time vector
t = -2:0.05:2;

% Frequency pairs 
low_freqs = [697, 770, 852, 941];
high_freqs = [1209, 1336, 1477, 1633];

% DTMF signal
dtmf_signals = [
    low_freqs(4), high_freqs(4); 
    low_freqs(1), high_freqs(1); 
    low_freqs(1), high_freqs(2); 
    low_freqs(1), high_freqs(3); 
    low_freqs(2), high_freqs(1); 
    low_freqs(2), high_freqs(2); 
    low_freqs(2), high_freqs(3); 
    low_freqs(3), high_freqs(1); 
    low_freqs(3), high_freqs(2); 
    low_freqs(3), high_freqs(3); 
    low_freqs(4), high_freqs(1); 
    low_freqs(4), high_freqs(3); 
];

% Input number
x = input('Enter the input number (0-9, 11 for *, 12 for #): ');

% Check 
if x >= 1 && x <= 12
    y = sin(2*pi*dtmf_signals(x,1)*t) + sin(2*pi*dtmf_signals(x,2)*t); 
    plot(t, y);
    xlabel('Time (t)');
    ylabel('Amplitude');
    title('DTMF Signal for ',x);
else
    disp('Enter a valid input (0-9, 11 for *, 12 for #)');
end
