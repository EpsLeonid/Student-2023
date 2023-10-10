function [s] = funkciya_2(n,d,p,r,s,l,k,M,v)
while n < 111
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
    d(n) = v(n)-v(n1)-v(n2)+v(n3);
    p(n) = p(n4) + d(n);
    r(n) = p(n) + M*d(n);
    s(n) = s(n4) + r(n);
    n = n+1;
end
end
