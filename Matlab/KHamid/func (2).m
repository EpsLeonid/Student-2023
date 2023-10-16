function y = func(A,ta1,ta2,t)
 y = zeros(1,length(t));

% ���� ������� �������
for n = 1:N
  
  % ������ �������� d(n)
  d = v(n)-v(n-k)-v(n-l)+v(n-k-l);  

  % ���������� p(n)  
  if n >= 1
     p(n) = p(n-1) + d; 
  end

  % ���������� r(n) 
  r(n) = p(n) + M*d;  

  % ���������� s(n)
  if n >= 1  
     s(n) = s(n-1) + r(n);
  end

end

% ����� ��������
subplot(3,1,1)
plot(v)
title('������� ������')

subplot(3,1,2) 
plot(r)
title('�������� ������ r(n)')

subplot(3,1,3)
plot(s) 
title('�������� ������ s(n)')