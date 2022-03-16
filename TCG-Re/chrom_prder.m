function [newchrom,newfitness] = chrom_prder( chrom,fitness,N_chrom,N)

min_index = 1;  
temp = 1;  
temp_chrom = zeros(1,N_chrom); 
for i = 1:N
    min_index = i;  
    for j = i+1:N
       if fitness(j) < fitness(min_index) 
          min_index = j; 
       end
    end
    if min_index ~= i   
       temp = fitness(i);
       fitness(i) = fitness(min_index);
       fitness(min_index) = temp;
      
       temp_chrom = chrom(i,:);
       chrom(i,:) = chrom(min_index,:);
       chrom(min_index,:) = temp_chrom;
    end
end
newchrom = chrom;
newfitness = fitness;
end

