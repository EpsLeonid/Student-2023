function y = func(A,ta1,ta2,t)
 y = zeros(1,length(t));

% Цикл расчета фильтра
for n = 1:N
  
  % Расчет разности d(n)
  d = v(n)-v(n-k)-v(n-l)+v(n-k-l);  

  % Накопление p(n)  
  if n >= 1
     p(n) = p(n-1) + d; 
  end

  % Накопление r(n) 
  r(n) = p(n) + M*d;  

  % Накопление s(n)
  if n >= 1  
     s(n) = s(n-1) + r(n);
  end

end

% Вывод графиков
subplot(3,1,1)
plot(v)
title('Входной сигнал')

subplot(3,1,2) 
plot(r)
title('Выходной сигнал r(n)')

subplot(3,1,3)
plot(s) 
title('Выходной сигнал s(n)')