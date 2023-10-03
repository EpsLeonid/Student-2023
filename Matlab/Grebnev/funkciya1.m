function [T,Y] = funkciya1(tau1,tau2,t)
i = 1;
global t;
global tau1;
global tau2;
while t < 100 %запускаем цикл вычисления всех значений у в заданных пределах
    if (t<0)
        y = 0;
    else
        y = exp(-t/tau1)-exp(-t/tau2);
    end %завершаем цикл if
    Y(i) = y;
    T(i) = t;
    i = i+1;
    t = t + 1;
end %завершаем цикл while
end