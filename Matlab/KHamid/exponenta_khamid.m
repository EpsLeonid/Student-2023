function [v] = exponenta_khamid(A, ta1, ta2,t)
i = 1;
for t=-10:100
    if t < 0
        v(i) = 0;
    else 
        v(i) = A*exp(-t/ta1)-exp(-t/ta2);
    end
    i = i+1;
end
v
end
    

        
