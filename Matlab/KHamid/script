t = -10:100;
y = zeros(size(t));
A = 1;
for i = 1:length(t)
  if t(i) >=0
      y(i)= A * (exp(-t(i)/16)-exp(-t(i)/5));
  else
      y(i)=0;
  end
end  

plot(t,y);
