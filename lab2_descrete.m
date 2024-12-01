
t = -50 : 5 : 50;

%Unit impulse
impulse = t == 0;
subplot(3,2,1);
stem(t,impulse);
title('impulse');
xlabel('time');
ylabel('amplitude');

%Unit step
step = t >= 0;
subplot(3,2,2);
stem(t,step);


%sin
T = 0 : 0.2 : 5;
sine = sin(T);
subplot(3,2,3);
stem(T,sine);
title('sine');
xlabel('amp');
ylabel('time');

%cosine
cosine = cos(T);
subplot(3,2,4);
stem(T,cosine);


%sawtooth
t = 0 : 0.5 : 20;
saw = sawtooth(t);
subplot(3,2,5);
stem(t,saw);
