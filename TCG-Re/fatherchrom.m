function [realfather_chrom,realfather_fitness]= fatherchrom(grapa_best_fitness,grapa_best_individual,current_chrom,current_fitness,current_worst_index,current_best_fitness)

temp_chrom = current_chrom;  
temp_fitness = current_fitness; 

%%
if grapa_best_fitness > current_best_fitness  
    for i = 1:4 
        if current_worst_index == i  
            temp_fitness(i) = grapa_best_fitness;
            temp_chrom(i,:) = grapa_best_individual;
        end
    end
end

realfather_chrom = temp_chrom;
realfather_fitness = temp_fitness;

end

