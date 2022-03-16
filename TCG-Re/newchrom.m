function new_chrom = newchrom(mut_chrom,var_type,N_chrom)

new_chrom = zeros(4,N_chrom);
for i = 1:4
   m = mut_chrom{i} ;
   mm  = transform_1(m,var_type);
   new_chrom(i,:) = mm(1,:);
end
end

