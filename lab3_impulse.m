% Define the transfer function (e.g., H(s) = 1 / (s^2 + 3s + 2))

numerator = [1];   % Numerator coefficients (1)
denominator = [1, 3, 2];   % Denominator coefficients (s^2 + 3s + 2)

% Create transfer function using the 'tf' function
H = tf(numerator, denominator);

% Plot the impulse response
subplot(2,1,1);
impulse(H);
title('Impulse Response');
grid on;


subplot(2,1,2);
stem(impulse(H));