function var_range = get_range( var_type,var_length )

[num,num2] = size(var_type);
var_range = zeros(num,2); 
for i = 1:num
   if var_type(i) == 1  
       low = -power(2,var_length(i)-1);
       high = power(2,var_length(i)-1)-1;
   elseif var_type(i) == 0  
       low = 0;
       high = power(2,var_length(i))-1;
   elseif var_type(i) == 2  
       low = -power(2,var_length(i)-1);
       high = power(2,var_length(i)-1)-1;
   end
   var_range(i,1) = low;
   var_range(i,2) = high;
end
end

