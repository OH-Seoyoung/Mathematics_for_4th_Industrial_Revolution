close all; clear all;

M = 100;
T = 10;
N = 1000;

x = zeros(N+1, M);
t = zeros(N+1, 1);
x(1,:) = 10;
dt = T/N;

a = 0.7;
b = 0.17;

for i=2:N+1
    t(i) = t(i-1) + dt;
    x(i,:) = x(i-1,:) + a*dt + b*sqrt(dt)*randn(1,M);
end

plot(t,x);