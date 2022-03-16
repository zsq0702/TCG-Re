function chrom_new = Initialize( N, N_chrom, chrom_range)

chrom_new = rand(N, N_chrom);  
for i = 1:N_chrom 
    chrom_new(:, i) = round(chrom_new(:, i)*(chrom_range(i, 2)-chrom_range(i, 1))+chrom_range(i, 1));
end

