function DispResultsSO( iteration, FitnessValue, GenesSet )
    V = sprintf(' %%7.0f   %%9.6g');
    for i = 1:length(GenesSet)
        V = [V sprintf('   %%5.6g')];
    end
    V = sprintf(V,iteration, FitnessValue, GenesSet);
    disp(V);
return