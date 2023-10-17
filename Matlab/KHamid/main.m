 % Параметры фильтра
k = 8; 
l = 5;
M = 16;
 ta1 = 16;
 ta2 = 5;
 A = 1;
 t = -10:1:100;
 v = exponenta(A,ta1,ta2,t);
 
 s = func(M,v,k,l); 
 plot(t,v,'b',t,s,'r');
grid on
 
 