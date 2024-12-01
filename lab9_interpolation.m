clc;
clear;
close all;

x = [1, 2, 3, 4, 5];

% Interpolation
L = 2; 
y_upsampled = upsample(x, L); 
h = ones(1, L); 
y_interp = conv(y_upsampled, h, 'same'); 

% Decimation
M = 2; 
y_decimated = downsample(y_interp, M); 

% Plot the results
subplot(3, 1, 1);
stem(x, 'filled');
title('Original Signal');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(y_interp, 'filled');
title('Interpolated Signal');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(y_decimated, 'filled');
title('Decimated Signal (After Interpolation)');
xlabel('n');
ylabel('Amplitude');
