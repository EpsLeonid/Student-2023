function y = func(A,ta1,ta2,t)
 y = zeros(1,length(t));
 for i = 1 : length(t)
     if(t(i) >= 0)
         y(i) = A*(exp(-t(i)/ta1)-exp(-t(i)/ta2));
     else
         y(i) = 0;
     end
 end
end
