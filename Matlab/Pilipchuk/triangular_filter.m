% Определяем функцию, которая принимает на вход массив v и параметры k, l,
% M. Она возвращает четыре массива: d, p, r, s, соответствующие формулам Б
% для треугольного фильтра
function [d, p, r, s] = triangular_filter(y, k, l, T_clk, tau)
A = 1;
t = -10:1:100;

%Вычисление функции v
v = zeros(size(t));
v(t>=0) = A * (exp(-t(t>=0)/tau(1)) - exp(-t(t>=0)/tau(2))); % Вычисляем значение функции y(t) по формуле
v = y;
%Вычисление функции d
d = v - cirshift(v,k) - cirshift(v,l) + cirshift(v,k+l);
%Вычисление функции p
p = zeros(size(t));
p(t>=0) = cumsum(d(t>=0));
%Вычисление функции r
M = 1/(exp(T_clk/tau(1))-1);
r = p + M*d;

%Вычисление функции s
s = zeros(size(t));
s(t>=0) = cumsum(r(t>=0));

%Параметры для преобразования функции y
k = 6;
l = 6;
tau = [16, 5];
T_clk = 1;

[d, p, r, s] = triangular_filter(y, k, l, T_clk, tau);

figure;
plot(t, s);
xlabel('t');
ylabel('s');
title('График функции s');
grid on;

end



