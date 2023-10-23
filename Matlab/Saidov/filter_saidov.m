function [s] = filter_saidov(m1,m2,l,k,v)
N = length(v);
[dk,d1,p,q,s]=deal(zeros(1,N));
n = 1;
d1(1) = v(1);
i = 2;
for i=2:N
    d1(i) = v(i)-v(i-1);
end
for n = 1:N
    dk(n) = v(n);
    if n-k >= 1
        dk(n) = dk(n) - v(n - k); 
    end
    p(n) = dk(n);
    if n-l >= 1
        p(n) = p(n)-k*d1(n-l);
    end
end 
p(1) = dk(1);
q(1) = m2*p(1); 
s(1) = q(1)+m1*p(1); 

for j=2:N
    q(j) = q(j-1) + m2*p(j); 
    s(j) = s(j-1) + q(j)+m1*p(j); 
end
end %завершаем вторую функцию
