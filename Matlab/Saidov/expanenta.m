function [y,t]=expanenta(A, tau1,tau2,t_step,t_spread)

y=A*(exp(-t/tau1)-exp(-t/tau2));

y(t < 0) = 0;

plot(t, y); 
xlabel('t'); 
ylabel('y');
title('grafic');

grid on;