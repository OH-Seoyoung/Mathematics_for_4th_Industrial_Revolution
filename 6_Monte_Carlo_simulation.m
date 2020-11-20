% MC estimate of pi

clear; clc; clf;
n = 1000 ; % change to 100000

x = -1 + 2*rand([1 n]);
y = -1 + 2*rand([1 n]);

figure(1)
plot(x, y, 'r+')'
c = 0;
s = 0;

for i = 1:n
    s = s+1;
    if x(i)^2 + y(i)^2 <=1
        c = c+1;
        figure(2);
        plot(x(i), y(i), 'r+')';
        hold on
    else
        figure(2);
        plot(x(i), y(i), 'b+')';
    end
end

p = c/s
MC_pi = 4*p
