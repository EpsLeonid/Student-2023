l = 6;
k = 13;
m1 = 16;
m2 = 1;
t1 = 16;
t2 = 5;
A = 1;
t = -10:1:100;
v = signal_saidov(t1,t2);
s = filter_saidov(m1,m2,l,k,v);
subplot(1,2,1); plot(t,v,'b'); %выводим первый график
subplot(1,2,2); plot(t,s,'r'); %выводим второй график
