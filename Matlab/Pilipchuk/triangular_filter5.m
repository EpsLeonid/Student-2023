function [s] = triangular_filter5 (v, k, L, M)

n = length(v); % получаем длину вектора v
[d,p,r,s]=deal(zeros(1,n)); % инициализируем переменные d, p, r, s нулевыми векторами длины n

for i=1:n 
d(i) = v(i); % присваиваем d(i) значение v(i)
if i-k >= 1
d(i) = d(i) - v(i - k); % вычитаем из d(i) значение v(i-k), если i-k >= 1
end
if i-L >= 1
d(i) = d(i) - v(i - L); % вычитаем из d(i) значение v(i-L), если i-L >= 1
end
if i-L-k >= 1
d(i) = d(i) + v(i - L - k); % прибавляем к d(i) значение v(i-L-k), если i-L-k >= 1
end
end

p(1) = d(1); % присваиваем p(1) значение d(1)
r(1) = p(1) + M*d(1); % присваиваем r(1) значение p(1) + M * d(1)
s(1) = r(1); % присваиваем s(1) значение r(1)
for i=2:n
p(i) = p(i-1) + d(i); %p(i)
r(i) = p(i) + M*d(i); %r(i)
s(i) = s(i-1) + r(i); %s(i)
end

maxV = max(v); % находим максимальное значение вектора v
maxS = max(s); % находим максимальное значение вектора s
for i=1:n
s(i) = maxV * s(i) / maxS; % масштабируем каждый элемент s(i) по максимальным значениям maxV и maxS
end
