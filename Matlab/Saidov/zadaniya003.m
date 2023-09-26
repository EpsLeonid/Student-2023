% ������� 6
% ��������������� ������ (������� �) � ����������� k=13, l=6, M=16

function s = filter(v)
% v - �������� ������
% s - ������ ����� ����������

k = 13;  l = 6;  M = 16; % ��������� �������
s = zeros(size(v)); % ��������� �� ����� ��� ��������� 
for n = 1:length(v) % ��� ������� �������� �������
    % �������� ������ d(n)
    d(n) = v(n); % ������ ���������
    if n-k>0 % ���� ������ ���������
        d(n) = d(n) - v(n-k); % ��������� ������
    end
    if n-l>0 % ���� ������ ���������
        d(n) = d(n) - v(n-l); % ��������� ������
    end
    if n-k-l>0 % ���� ������ ���������
        d(n) = d(n) + v(n-k-l); % ��������� ���������
    end    
    
    if n==1 % ���� n=1 - �� ���������� ���������� �������� (n-1), �� ���
        p(n) = d(n); % ������ p(n)
        r(n) = p(n) + M*d(n); % ������ r(n)
        s(n) = r(n); % ������ s(n)
    else % ���� n>1, �� ���������� ���������� �������� (n-1)
        p(n) = p(n-1) + d(n); % ������ p(n)
        r(n) = p(n) + M*d(n); % ������ r(n)
        s(n) = s(n-1) + r(n); % ������ s(n)
    end
end