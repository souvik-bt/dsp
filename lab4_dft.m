input_signal = [0 1 2 3 0 0 0 0];
N = length(input_signal);

% Plot original signal
subplot(2, 2, 1);
stem(input_signal);
title("Original Signal (time domain)");

% Initialize DFT arrays
dft_signal = zeros(N);
dft_signal_magnitude = zeros(N);
dft_signal_phase = zeros(N);

% Compute DFT
for k = 1:N
    total = 0;
    for n = 1:N
        total = total + (input_signal(n) * exp(-1i * 2 * pi * (k - 1) * (n - 1) / N));
    end
    dft_signal(k) = total;
    dft_signal_magnitude(k) = abs(total);
    dft_signal_phase(k) = angle(total);
end

% Plot magnitude of DFT
subplot(2, 2, 2);
stem(dft_signal_magnitude);
title("Magnitude Plot (Frequency Domain)");

% Plot phase of DFT
subplot(2, 2, 3);
stem(dft_signal_phase);
title("Phase Plot (Frequency Domain)");

% Reconstruct original signal using inverse DFT
reconstructed = zeros(N, 1);

for n = 1:N
    total = 0;
    for k = 1:N
        total = total + dft_signal(k) * exp(1i * 2 * pi * (k - 1) * (n - 1) / N); % Use dft_signal(k)
    end
    total = total / N; % Normalize by N for inverse DFT
    reconstructed(n) = abs(total); % Take the magnitude to avoid any tiny imaginary parts
end

% Plot reconstructed signal
subplot(2, 2, 4);
stem(reconstructed);
title("Reconstructed Signal (Time Domain)");
