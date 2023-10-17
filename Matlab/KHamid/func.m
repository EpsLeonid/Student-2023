
function y = func123(A,ta1,ta2,t)
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


function y = func123(A,ta1,ta2,t)
 y = zeros(1,length(t));
 for i = 1 : length(t)
     if(t(i) >= 0)
         y(i) = A*(exp(-t(i)/ta1)-exp(-t(i)/ta2));
     else
         y(i) = 0;
     end
 end

function [s] = func123(M,v,k,l)
N = length(v);
d = zeros(N);
r = zeros(N);
s = zeros(N);
p = zeros(N);
n = 1;
% Цикл расчета фильтра
for n=1:N
    d(n) = v(n); 
    if n-k >= 1
    d(n) = d(n) - v(n - k); 
    end
    if n-l >= 1
    d(n) = d(n) - v(n - l); 
    end
    if n-l-k >= 1
    d(n) = d(n) + v(n - l - k); 
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
p(1) = d(1);
r(1) = p(1) + M*d(1); 
s(1) = r(1); 
for j=2:N
    p(j) = p(j-1) + d(j);
    r(j) = p(j) + M*d(j); 
    s(j) = s(j-1) + r(j); 
end
% Вывод графиков
subplot(3,1,1)
plot(v)
title('Входной сигнал')

subplot(3,1,2)
plot(s) 
title('Выходной сигнал s(n)')
