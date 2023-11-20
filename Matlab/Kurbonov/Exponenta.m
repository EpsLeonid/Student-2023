%определяем функцию с названием "Exponenta" и ее входными аргументами t, tau1 и tau2
function [T,Y] = Exponenta(tau1,tau2,t)
i = 1;
while t < 100 %запускаем цикл вычисления всех значений "у" в заданных пределах
    if (t<0)
        y = 0;
    else
        y = exp(-t/tau1)-exp(-t/tau2); % вычисляем значения функции y для каждого элемента t по заданной формуле
    end %конец цикла if
    Y(i) = y;
    T(i) = t;
    i = i+1;
    t = t+1;
end %конец цикла while
end