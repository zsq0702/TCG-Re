function grapachrom_best = FindGrapaBest(grapachrom, grapafitness, N_chrom)

grapachrom_best = zeros(1,N_chrom);  
[maxNum, maxlocation] = max(grapafitness);   
grapachrom_best(1:N_chrom) = grapachrom(maxlocation,:); 
end


