function chrom_bindata= transform(var_now,var_length,N_chrom,var_type)

chrom_bindata = cell(N_chrom,1);  
for i = 1:N_chrom
    if var_type(i) == 1 || var_type(i) == 2  
        if var_now(1,i) >= 0 
            cen = dec2bin(var_now(1,i),var_length(i));
            var_new = str2num(cen(:));
        else 
            var_then(1,i) = abs(var_now(1,i));
            cen1 = dec2bin(power(2,(var_length(i))) - var_then(1,i));  
            cen2 = str2num(cen1(:));
            var_new = cen2;
        end
    else  
        cen1 = dec2bin(var_now(1,i),var_length(i));  
        var_new = str2num(cen1(:));
    end
    chrom_bindata{i} = var_new;
end    

end

