 % Параметры фильтра
k = 8; 
l = 5;
M = 16;
 ta1 = 16;
 ta2 = 5;
 A = 1;
 t = -10 : deltaT : 100;
 y = exponenta(A,ta1,ta2,t);
 
 s = func(y, k, L, M); 
 plot(t,y,'b',t,s,'r');
grid on
 
 