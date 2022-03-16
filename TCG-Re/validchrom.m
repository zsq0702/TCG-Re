function valid_chrom = validchrom(new_chrom,newfitness,N_chrom)
valid_chrom = zeros(4,N_chrom);
for i = 1:4
   
   if newfitness(i) > 0
       m = new_chrom(i); 
       valid_chrom(i,:) = m(1,:);
   end
end
end