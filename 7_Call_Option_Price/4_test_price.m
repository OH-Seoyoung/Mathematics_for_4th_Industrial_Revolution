clear all; close all;

M = 100; mu = 0.15;
sigma = 0.3; dt = 1/52;
S_0 = 100; t = 0:dt:1;
n = size(t); x = randn(M, n(2)-1);
y = [S_0*ones(M,1), (mu*dt+1)+sigma*sqrt(dt)*x];
y = cumprod(y,2);
plot(t,y)