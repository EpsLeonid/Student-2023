% ������� ���������� �������
l = 6;
k = 13;
m1 = 16;
m2 = 1;

% �������� �������� �������
v = randn(100,1);

% ������������� ����������
d = zeros(size(v)); % ������ ��������� 
p = zeros(size(v)); % ����� ���������������� �������
q = zeros(size(v)); % ����� ��������� �������
s = zeros(size(v)); % �������� ����� �������

M = m1/m2; % ����������� ��������

for n = 1:length(v) % ���� �� ���� �������� �������

% ���������� ���������
if n>1
d^k(n) = v(n)-v(n-1);
end

if n>k
d^1(n) = v(n)-v(n-k);
end

% ���������� ������ ���������������� �������
if n>1
p(n) = p(n-1) + d^k(n) - k*d^1(n-1);
end

% ���������� ������ ��������� �������
if n>0
q(n) = q(n-1) + m2*p(n);
end

% ���������� ��������� ������
if n>0
s(n) = s(n-1) + q(n) + M*p(n);
end

end

% ����� �����������
p
q
s