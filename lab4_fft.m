% Define the input signal
input_signal = [0 1 2 3 0 0 0 0];
N = length(input_signal);

% Compute DFT using fft
dft_signal = fft(input_signal);

% Magnitude and Phase
dft_magnitude = abs(dft_signal);
dft_phase = angle(dft_signal);

% Compute IDFT using ifft
reconstructed_signal = ifft(dft_signal);

% Plot results
subplot(2, 2, 1);
stem(input_signal);
title("Original Signal (Time Domain)");

subplot(2, 2, 2);
stem(dft_magnitude);
title("Magnitude Plot (Frequency Domain)");

subplot(2, 2, 3);
stem(dft_phase);
title("Phase Plot (Frequency Domain)");

subplot(2, 2, 4);
stem(real(reconstructed_signal)); % Take real part to avoid numerical artifacts
title("Reconstructed Signal (Time Domain)");
