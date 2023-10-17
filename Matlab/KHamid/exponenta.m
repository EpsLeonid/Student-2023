function [v] = exponenta(A, tau1, tau2,t)

v = A * (exp(-t/tau1) - exp(-t/tau2));

v(t < 0) = 0;
 
xlabel('t'); 
ylabel('v');
title('grafic ');
plot(t, v);

grid on;
