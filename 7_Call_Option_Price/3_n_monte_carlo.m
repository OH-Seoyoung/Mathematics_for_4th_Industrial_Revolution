close all; clear all;

% n = 100;
% dt = 0.01;
% t = 0:dt:1;
% x = randn(n, 1/dt);
% y = [zeros(n,1), 0.2*x*sqrt(dt)];
% y = cumsum(y,2);
% plot(t,y)

mu = 0.15; sigma = 0.3;
dt = 1/52; S_0 = 100;
t = 0:dt:1;
n = size(t);
x = randn(1, n(2)-1);
y = [S_0*ones(1,1), (mu*dt+1)*sigma*sqrt(dt)*x];
y = cumprod(y,2);
plot(t(1:10), y(1:10), 'o-');