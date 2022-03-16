function fitness = CalFitness(a,N)

fitness = zeros(N, 1);

for i = 1:N
    fitness(i) = a(i,1);  
end

