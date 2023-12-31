%определяем функцию с названием "Exponenta" и ее входными аргументами A, tau1 и tau2
function [y,t] = Exponenta(A, tau1, tau2, t_step, t_spread) 
t = -10:t_step:t_spread; %создаем вектор t с элементами от -10 до 100 с шагом 1

% вычисляем значения функции y для каждого элемента t по заданной формуле
y = A * (exp(-t/tau1) - exp(-t/tau2));

% устанавливаем значение нуля для всех элементов y, где соответствующий элемент t меньше нуля
y(t < 0) = 0;

plot(t, y); % строим график

% задаём названия осям и графику
xlabel('t'); 
ylabel('y');
title('График функции y');

% устанавливаем сетку
grid on;
