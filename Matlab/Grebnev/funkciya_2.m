function [s] = funkciya_2(l,k,M,Y)
n = length(Y); % получаем длину массивов
d = deal(zeros(1,n)); % вводим новые массивы с длинами, равной длине массива Y
p = deal(zeros(1,n));
r = deal(zeros(1,n));
s = deal(zeros(1,n));
i = 1;
while i < n+1 
    d(i) = Y(i); % присваиваем d(i) значение v(i)
    if i-k >= 1
    d(i) = d(i) - Y(i - k); % вычитаем из d(i) значение v(i-k), если i-k >= 1
    end
    if i-l >= 1
    d(i) = d(i) - Y(i - l); % вычитаем из d(i) значение v(i-L), если i-L >= 1
    end
    if i-l-k >= 1
    d(i) = d(i) + Y(i - l - k); % прибавляем к d(i) значение v(i-L-k), если i-L-k >= 1
    end
    i = i+1;
end
p(1) = d(1); % согласно используемым формулам, присваиваем первым элементам массивов следующие значения
r(1) = p(1) + M*d(1); 
s(1) = r(1); 
j = 2;
while j < n+1
    p(j) = p(j-1) + d(j); 
    r(j) = p(j) + M*d(j); 
    s(j) = s(j-1) + r(j); 
    j = j+1;
end

maxY = max(Y); % для удобного вида массшатбируем по максимальным значениям
maxS = max(s); 
for i=1:n
s(i) = maxY * s(i) / maxS; 
end
end
