
clc;
close all;
clear;
filename = 'C:\Users\fifo\Desktop\zzz\≤‚ ‘\varityinfo1.xlsx';

%% 
dat = readtable(char(filename),'ReadVariableNames',true);
var_type = table2array(dat(:,1:1));
var_length = table2array(dat(:,2:2));
var_name = table2array(dat(:,3:3));
N = 4; 
N_chrom = length(var_name);  
Pmut = 0.1;  
Pcross = 0.6; 
%%
chrom_range = get_range(var_type,var_length);  
chrom = zeros(N,N_chrom);
currentfitness = zeros(N, 1);
fitness_best = zeros(1,1);
chrom_best = zeros(1, N_chrom+1);   
%%
%{
chrom = Initialize(N,N_chrom,chrom_range);  
firstchrom = chrom;
currentchrom = chrom;
%}
%%
chrom = importdata('c1/chrom21.mat');  
currentchrom = chrom;
prefitnessP = importdata('c1/fitnessP21.mat'); 
perfitnessG = importdata('c1/fitnessG21.mat');
prebestP = importdata('c1/p21.mat'); 
prebestG = importdata('c1/g21.mat'); 
grapachrom = importdata('c1/chrom20.mat');
grapafitness = importdata('c1/fitness21.mat');
grapabestindividual = FindGrapaBest(grapachrom, grapafitness, N_chrom); 
grapabestfitness = max(grapafitness); 

%%
org = 0.45; 
m = [0;2;2;1;];
n = [0;1;0;1;];
p = [0;2;2;1;];
q = [0;1;0;1;];
a = getfitness1(p,q,m,n,org,N);  
currentfitness = CalFitness(a,N); 
currentbestfitness = max(currentfitness); 
currentworstfitness = min(currentfitness); 
currentworstindexagrs = find(currentfitness == currentworstfitness);
currentworstindex = currentworstindexagrs(1);

%%

[currentbestP,fitnessPB] = pso_new_PB(currentchrom,prefitnessP,currentfitness,prebestP,N);

[currentbestG,fitnessGB] = pso_new_GB(currentbestP,perfitnessG,fitnessPB,prebestG,N);

%%
[realfatherchrom,realfatherfitness] = fatherchrom(grapabestfitness,grapabestindividual,currentchrom,currentfitness,currentworstindex,currentbestfitness);

%%

[fatherchrom,newfitness] = chrom_prder(realfatherchrom,realfatherfitness,N_chrom,N);

sumfitness = 0;
temp_p = 0;  
for i = 1:N 
    fitness_sum(i) = 0;  
end
for i = 1:N  
   sumfitness = sumfitness + newfitness(i);
end
for i = 1:N
    temp_p = newfitness(i)/sumfitness;
    if i == 1
        fitness_sum(i) = temp_p;
    else
        fitness_sum(i) = fitness_sum(i-1) + temp_p;
    end
end

%% 
select_chrom = selectchrom(fatherchrom,N,N_chrom,fitness_sum);
%%
cross_chrom = crosschrom_3(select_chrom,N_chrom,var_length,var_type,Pcross);
%%
mut_chrom = mutation(cross_chrom,N_chrom,var_length,Pmut);
%%
new_chrom = newchrom(mut_chrom,var_type,N_chrom);
valid_chrom = validchrom(new_chrom,newfitness,N_chrom);

