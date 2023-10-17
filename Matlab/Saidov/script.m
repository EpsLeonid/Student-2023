A=1;
tau1=16;
tau2=5;

k = 13;
L = 6;

t_step=1;
t_spread=150;
%M=tau1/t_step;
M = 16;


[y,t]=expanenta(A, tau1,tau2,t_step,t_spread);
t=0:t_step:t_spread;
s= zadaniya003(y, k, L, M);

plot(t,y,'b',t,s,'r');
