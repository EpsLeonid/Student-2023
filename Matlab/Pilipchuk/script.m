A=1;
tau1=16;
tau2=5;
t_step=1;
t_spread=150;


k = 6;
L = 6;
%M=tau1/t_step;
M = 16;


[y,t]=Exponenta(A, tau1,tau2,t_step,t_spread); 
s=triangular_filter(y, k, L, M);

plot(t,y,'b',t,s,'r');
