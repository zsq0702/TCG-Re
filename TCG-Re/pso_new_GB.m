function [ currentGB,GBfitness] = pso_new_GB( currentP,prefitnessG,fitnessPB,preG,N )

currentGB = preG;
GBfitness = prefitnessG;

cen1 = currentP(1,:);
cen2 = fitnessPB(1);
for i = 2:N
    if fitnessPB(i) > cen2
        cen1 = currentP(i,:);
        cen2 = fitnessPB(i);
    end
end

if cen2 > prefitnessG
    currentGB = cen1;
    GBfitness = cen2;
end

end



