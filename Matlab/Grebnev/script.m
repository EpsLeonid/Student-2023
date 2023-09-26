first %запуск первой функции построения графика
global T;
global Y;
tiledlayout(2,2)
nexttile
plot(T, Y) %выводим получившийся график
second %запуск второй функции 
global X;
global S;
nexttile
plot(X, S)