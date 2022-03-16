function chrom_best = FindBest(chrom, fitness, N_chrom)

chrom_best = zeros(1, N_chrom+1); 
[maxNum, maxlocation] = max(fitness);  
chrom_best(1:N_chrom) =chrom(maxlocation, :); 
chrom_best(end) = maxNum;  
end

