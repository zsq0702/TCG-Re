function [currentPB,fitnessPB] = pso_new_PB( currentchrom,prefitnessP,currentfitness,prePB,N )

currentPB = currentchrom;
fitnessPB = currentfitness;
for i = 1:N
  if prefitnessP(i) > currentfitness(i)
      currentPB(i,:) = prePB(i,:);
      fitnessPB(i) = prefitnessP(i);
  end
end

