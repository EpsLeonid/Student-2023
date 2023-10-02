function [y,t]=Exponenta(A, tau1,tau2,t_step,t_spread)
t=0:t_step:t_spread;
y=A*(exp(-t/tau1)-exp(-t/tau2)); 