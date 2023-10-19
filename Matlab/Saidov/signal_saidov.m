function [v] = signal_saidov(t1,t2)
i = 1;
t = -10;
while t <= 100 
    if t < 0
        v(i) = 0;
    else 
        v(i) = exp(-t/t1)-exp(-t/t2);
    end
    i = i+1;
    t = t+1;
end
end %завершаем функцию