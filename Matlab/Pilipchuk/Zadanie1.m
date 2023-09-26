A = 1; % ����� ��������� �, ������ 1
tau1 = 2; %������ ���������� �������
tau2 = 4;
t = linspace(-10, 10, 100); %��������� ������� ����� t

global y;
y = zeros(size(t)); %������ ������ y, ������� �������� 0 ��� ���� �������� t ������ 0, ����� - ��������� ������� y(t) ��� �������� ��������� ����������

y(t>=0) = A * (exp(-t(t>=0)/tau1) - exp(-t(t>=0)/tau2)); % ��������� �������� ������� y(t) �� �������

plot(t, y); % ������ ������ ������� y(t)
xlabel('t');
ylabel('y');
title('������ ������� y');
grid on;
