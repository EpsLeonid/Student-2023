<<<<<<< .mine
function y = func(A,ta1,ta2,t)
 y = zeros(1,length(t));

% Öèêë ğàñ÷åòà ôèëüòğà
for n = 1:N
  
  % Ğàñ÷åò ğàçíîñòè d(n)
  d = v(n)-v(n-k)-v(n-l)+v(n-k-l);  

  % Íàêîïëåíèå p(n)  
  if n >= 1
     p(n) = p(n-1) + d; 
  end

  % Íàêîïëåíèå r(n) 
  r(n) = p(n) + M*d;  

  % Íàêîïëåíèå s(n)
  if n >= 1  
     s(n) = s(n-1) + r(n);
  end

||||||| .r56
function y = func(A,ta1,ta2,t)
 y = zeros(1,length(t));
 for i = 1 : length(t)
     if(t(i) >= 0)
         y(i) = A*(exp(-t(i)/ta1)-exp(-t(i)/ta2));
     else
         y(i) = 0;
     end
 end
=======
function [s] = func(M,v,k,l)
N = length(v);
d = zeros(N);
r = zeros(N);
s = zeros(N);
p = zeros(N);
n = 1;
% Öèêë ğàñ÷åòà ôèëüòğà
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
>>>>>>> .r60
end
<<<<<<< .mine

% Âûâîä ãğàôèêîâ
subplot(3,1,1)
plot(v)
title('Âõîäíîé ñèãíàë')

subplot(3,1,2) 
plot(r)
title('Âûõîäíîé ñèãíàë r(n)')

subplot(3,1,3)
plot(s) 
title('Âûõîäíîé ñèãíàë s(n)')||||||| .r56
=======
p(1) = d(1);
r(1) = p(1) + M*d(1); 
s(1) = r(1); 
for j=2:N
    p(j) = p(j-1) + d(j);
    r(j) = p(j) + M*d(j); 
    s(j) = s(j-1) + r(j); 
end
% Âûâîä ãğàôèêîâ
subplot(3,1,1)
plot(v)
title('Âõîäíîé ñèãíàë')

subplot(3,1,2)
plot(s) 
title('Âûõîäíîé ñèãíàë s(n)')>>>>>>> .r60
