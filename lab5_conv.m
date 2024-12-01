a = zeros(input("enter the size and the seq "),1);
for i=1:length(a)
    a(i) = input("");
end    


b = zeros(input("enter the size and the seq "),1);
for i=1:length(b)
    b(i) = input("");
end  


c = conv(a, b);

subplot(3, 1, 1);
stem(a);
title("First vector");

subplot(3, 1, 2);
stem(b);
title("second vector");

subplot(3, 1, 3);
stem(c);
title("linear convolution");