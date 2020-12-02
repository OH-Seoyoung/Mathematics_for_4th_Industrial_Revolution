close all; clear all;

M = 1;
T = 10;
N = 1000;
Del_t = T/N;
a = 0.03;
b = 0.17;

x = ones(N+1, M);
t = ones(N+1, 1);
x(1,:) = 10;
t(1) = 0;

for i=2:N+1
    t(i) = t(i-1) + Del_t;
    x(i,:) = x(i-1,:) + a*Del_t + b*sqrt(Del_t)*randn(1,M);
end

plot(t,x);