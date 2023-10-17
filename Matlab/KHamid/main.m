 % Параметры фильтра
k = 8; 
l = 5;
M = 16;
 ta1 = 16;
 ta2 = 5;
 A = 1;
<<<<<<< .mine
 t = -10 : deltaT : 100;
 y = exponenta(A,ta1,ta2,t);
||||||| .r56
 t = -10 : deltaT : 100;
 y = func(A,ta1,ta2,t);
=======
 t = -10:1:100;
 v = exponenta(A,ta1,ta2,t);
>>>>>>> .r60
 
<<<<<<< .mine
 s = func(y, k, L, M); 
 plot(t,y,'b',t,s,'r');
grid on
||||||| .r56
 figure
 p = plot(t,y);
 set(p,'LineWidth',2);
 title('РџРµСЂРІС‹Р№ РіСЂР°С„РёРє');
 subtitle('Р—Р°РґР°РЅРёРµ в„–2');
 grid on
=======
 s = func(M,v,k,l); 
 plot(t,v,'b',t,s,'r');
grid on
>>>>>>> .r60
 
 