clear all; close all;

S_0 = 100; K = 100; T = 0.25;
r = 0.05; sigma = 0.15; dt = T/100;
t = 0:dt:T; n = size(t);
p_nbr = 10000;  % 1000, 10000, 100000
 
z = randn(p_nbr, n(2)-1);
y = [S_0*ones(p_nbr,1), (1+r*dt)+sigma*sqrt(dt)*z];
y = cumprod(y,2);

plot(t,y);

c = exp(-r*T)*mean(max(y(:,n(2)) - K,0))
