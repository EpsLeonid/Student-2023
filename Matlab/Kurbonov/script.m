tau1 = 16; %начальные данные для первой функции
tau2 = 5; %начальные данные для первой функции
t = -10;
[T,Y] = Exponenta(tau1,tau2,t); %запуск первой функции построения графика
subplot(1,2,1); plot(T,Y); % грфик первой функции
k = 5; %начальные данные для второй функции
l = 5;
M = 16;
X = -10:1:99;
s = trapezoidal_filter(l,k,M,Y);
subplot(1,2,2); plot(X,s,'r'); % график второй функции