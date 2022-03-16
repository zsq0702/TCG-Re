function a = getfitness1( p,q,m,n,e,N)

a = zeros(N, 1); 
for i = 1:N
    sum1 = p(i,1) + q(i,1)*(1 + e);
    %sum2 = n(i,1) + m(i,1)*(1 + e);
    sum2 = n(i,1) + m(i,1);
    a(i) = sum1/sum2;
end
end

