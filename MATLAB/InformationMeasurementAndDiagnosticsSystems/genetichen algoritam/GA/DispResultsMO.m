function DispResultsMO( iteration, Pareto_Fit, Pareto_Set, Flag )
    V = sprintf('Iter:%%5.0f ##>Fit:');
	[n,m] = size(Pareto_Fit);
	for i = 1:m
        V = [V sprintf('   %%8.4g')];
    end
	[n,m] = size(Pareto_Set);
	V = [V sprintf('   ##>Genes:')];
	for i = 1:m
        V = [V sprintf('   %%5.6g')];
    end

	if (Flag == 0)
	   MSG = sprintf(V,iteration, Pareto_Fit(1,:), Pareto_Set(1,:));
   	else
		MSG = [];
		for i=1:n
			if (i==n)
				MSG = [MSG sprintf(V,iteration, Pareto_Fit(i,:), Pareto_Set(i,:))];
			else
				MSG = [MSG sprintf([V 13],iteration, Pareto_Fit(i,:), Pareto_Set(i,:))];
			end
		end
	end
    disp(MSG);
return