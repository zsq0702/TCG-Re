function cross_chrom =crosschrom_3(select_chrom,N_chrom,var_length,var_type,Pcross)

%%

a = randperm(4);
a1 = a(1);
a2 = a(2);
a3 = a(3);
a4 = a(4);
%% 

cross_chrom_1 = transform(select_chrom(a1,:),var_length,N_chrom,var_type);  
cross_chrom_2 = transform(select_chrom(a2,:),var_length,N_chrom,var_type); 
cross_chrom_3 = transform(select_chrom(a3,:),var_length,N_chrom,var_type); 
cross_chrom_4 = transform(select_chrom(a4,:),var_length,N_chrom,var_type); 

%%

num1 = round(rand * N_chrom); 
num11 = round(rand * N_chrom);
temp1 = cell(N_chrom,1);  
temp2 = cell(N_chrom,1);  
temp3 = cell(N_chrom,1); 
temp4 = cell(N_chrom,1);  
%%

for i = 1:N_chrom 
    length = var_length(i); 
    temp_1 = zeros(length,1); 
    temp_2 = zeros(length,1);
    c1 = cross_chrom_1{i}; 
    c2 = cross_chrom_2{i}; 
    for j = 1:length   
        r1 = rand;
        if r1 <= Pcross
            temp_1(j,:) = c2(j,:);
            temp_2(j,:) = c1(j,:);
        else
            temp_1(j,:) = c1(j,:);
            temp_2(j,:) = c2(j,:);
        end
    end
    temp1{i}  = temp_1;
    temp2{i}  = temp_2;
end
%%

for i = 1:N_chrom 
    length = var_length(i); 
    temp_3 = zeros(length,1); 
    temp_4 = zeros(length,1);
    c3 = cross_chrom_3{i};  
    c4 = cross_chrom_4{i};  
    for j = 1:length   
        r1 = rand;
        if r1 <= Pcross
            temp_3(j,:) = c4(j,:);
            temp_4(j,:) = c3(j,:);
        else
            temp_3(j,:) = c3(j,:);
            temp_4(j,:) = c4(j,:);
        end
    end
    temp3{i}  = temp_3;
    temp4{i}  = temp_4;
end
%%

cross_chrom = cell(4,1);
cross_chrom{1} = temp1;
cross_chrom{2} = temp2;
cross_chrom{3} = temp3;
cross_chrom{4} = temp4;
end

