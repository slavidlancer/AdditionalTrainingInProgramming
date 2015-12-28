function PlotResultsMO ( iteration, FigHandle, Pareto_Fit)
	figure(FigHandle);
	[n,m] = size(Pareto_Fit);
	if (m==2)		% 2-D
		MSG = sprintf('Fitness Values\nIteration %d; Individs in Pareto set = %d',iteration,n);
		plot(Pareto_Fit(:,1),Pareto_Fit(:,2),'ro','MarkerSize', 5);grid;
		title(MSG);xlabel('Fintess 1');ylabel('Fitness 2');
	elseif (m==3)	% 3-D
		MSG = sprintf('Fitness Values\nIteration %d; Individs in Pareto set = %d',iteration,n);
		plot3(Pareto_Fit(:,1),Pareto_Fit(:,2),Pareto_Fit(:,3),'ro','MarkerSize', 5);grid;
		title(MSG);xlabel('Fintess 1');ylabel('Fitness 2');zlabel('Fitness 3');
	end
	drawnow;
return