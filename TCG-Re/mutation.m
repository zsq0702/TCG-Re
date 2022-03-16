function mut_chrom = mutation(cross_chrom,N_chrom,var_length,Pmut)

%%

m1 = cross_chrom{1};
m2 = cross_chrom{2};
m3 = cross_chrom{3};
m4 = cross_chrom{4};
for i = 1:N_chrom
    length = var_length(i);
   
    m_1 = m1{i};
    m_2 = m2{i};
    m_3 = m3{i};
    m_4 = m4{i};
    for j = 1:length
       
       r1 = rand;
       r2 = rand;
       r3 = rand;
       r4 = rand;
       if r1 <= Pmut  
           if m_1(j,:) == 0
               m_1(j,:) = 1;
           elseif m_1(j,:) == 1
               m_1(j,:) = 0;
           end
       else
           if m_1(j,:) == 0
               m_1(j,:) = 0;
           elseif m_1(j,:) == 1
               m_1(j,:) = 1;
           end
       end
       if r2 <= Pmut   
           if m_2(j,:) == 0
               m_2(j,:) = 1;
           elseif m_2(j,:) == 1
               m_2(j,:) = 0;
           end
       else
           if m_2(j,:) == 0
               m_2(j,:) = 0;
           elseif m_2(j,:) == 1
               m_2(j,:) = 1;
           end
       end
       if r3 <= Pmut   
           if m_3(j,:) == 0
               m_3(j,:) = 1;
           elseif m_3(j,:) == 1
               m_3(j,:) = 0;
           end
       else
           if m_3(j,:) == 0
               m_3(j,:) = 0;
           elseif m_3(j,:) == 1
               m_3(j,:) = 1;
           end
       end
       if r4 <= Pmut  
           if m_4(j,:) == 0
               m_4(j,:) = 1;
           elseif m_4(j,:) == 1
               m_4(j,:) = 0;
           end
       else
           if m_4(j,:) == 0
               m_4(j,:) = 0;
           elseif m_4(j,:) == 1
               m_4(j,:) = 1;
           end
       end
    end
    m1{i} = m_1;
    m2{i} = m_2;
    m3{i} = m_3;
    m4{i} = m_4;
end
%%

mut_chrom = cell(4,1);
mut_chrom{1} = m1;
mut_chrom{2} = m2;
mut_chrom{3} = m3;
mut_chrom{4} = m4;
end

