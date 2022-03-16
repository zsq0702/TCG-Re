function select_chrom = selectchrom(chrom,N,N_chrom,fitness_sum)

select_chrom = zeros(N,N_chrom);
for i = 1:N
    r = rand;
    if r <= fitness_sum(1)
        select_chrom(i,:) = chrom(1,:);
    elseif fitness_sum(1) < r <= fitness_sum(2)
        select_chrom(i,:) = chrom(2,:);
    elseif fitness_sum(2) < r <= fitness_sum(3)
        select_chrom(i,:) = chrom(3,:);
    else
        select_chrom(i,:) = chrom(4,:);
    end
end
end

