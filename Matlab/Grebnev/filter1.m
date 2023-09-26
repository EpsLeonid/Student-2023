function filter1
%M = 1/(exp(Tclk/tau)-1);
k = 5;
l = 5;
M = 16;
n = 1;
n1 = 1;
n2 = 1;
n3 = 1;
n4 = 1;
global A
d = linspace(1,122,111);
p = linspace(1,122,111);
r = linspace(1,122,111);
s = linspace(1,122,111);
while n < 112
    if n-k<0
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
    d(n) = A(n)-A(n1)-A(n2)+A(n3);
    p(n) = p(n4) + d(n);
    r(n) = p(n) + M*d(n);
    s(n) = s(n4) + r(n);
    n = n+1;
end
disp(d)
disp(p)
disp(r)
disp(s)
x = 0:1:110;
plot(x, s)
end
