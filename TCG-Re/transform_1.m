function chrom_decdata = transform_1(chrom_bindata,var_type)

num = numel(chrom_bindata);  
for i = 1:num
    var_now = chrom_bindata{i};  
    var_now = var_now';  
   if var_type(i)  == 1 || var_type(i) == 2    
      if var_now(1) == 0  
          cen = num2str(var_now);  
          cen(isspace(cen)) = []; 
          var_after = bin2dec(cen);
      else if var_now(1) == 1  
     
          num1 = length(var_now);  
          cen1 = zeros(1,num1);
          for j = 1:num1
              cen1(1,j) = 1;
          end   
          cen2 = bitxor(var_now,cen1);  
          cen3 = num2str(cen2);  
          cen3(isspace(cen3)) = []; 
          var_after = bin2dec(cen3) + 1;
          var_after = -var_after;
          end
      end
   else if var_type(i)  == 0
          cen = num2str(var_now);  
          cen(isspace(cen)) = [];  
          var_after = bin2dec(cen);
       end
   end
   chrom_decdata(1,i) = var_after;
end
end

