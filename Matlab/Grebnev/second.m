function second
k = 5;
l = 5;
x = 0;
M = 16;
n = 1;
n1 = 1;
n2 = 1;
n3 = 1;
n4 = 1;
d = linspace(1,122,111);
p = linspace(1,122,111);
r = linspace(1,122,111);
S = linspace(1,122,111);
global Y;
global X;
while n < 110
    if n-k<1
        n1 = 1;
    else
        n1 = n;
    end
    if n-l<1
        n2 = 1;
    else
        n2 = n;
    end
    if n-k-l<1
        n3 = 1;
    else
        n3 = n;
    end
    if n-1<1
        n4 = 1;
    else
        n4 = n;
    end
    d(n) = Y(n)-Y(n1)-Y(n2)+Y(n3);
    p(n) = p(n4) + d(n);
    r(n) = p(n) + M*d(n);
    S(n) = S(n4) + r(n);
    n = n+1;
end
X = 0:1:110;
end