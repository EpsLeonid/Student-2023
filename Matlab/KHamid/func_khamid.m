function s = func_khamid(M,k,l,v)
N = length(v);
[d,p,r,s]=deal(zeros(1,N));
n = 1;
% Цикл расчета фильтра
for n = 1:N
    % Расчет разности d(n)
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
p(1) = d(1);
r(1) = p(1) + M*d(1); 
s(1) = r(1); 

j = 2;
for j=2:N
    p(j) = p(j-1) + d(j);
    r(j) = p(j) + M*d(j); 
    s(j) = s(j-1) + r(j); 
end
end
