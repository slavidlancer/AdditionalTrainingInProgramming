function ParetoNumber( Pareto_Fit )
[n,m] = size(Pareto_Fit);
if (m <= 3)
	figure;
	if (m==2)		% 2-D
		MSG = sprintf('Fitness Values\nIndivids in Pareto set = %d',n);
		plot(Pareto_Fit(:,1),Pareto_Fit(:,2),'ro','MarkerSize', 5);grid;
		title(MSG);xlabel('Fintess 1');ylabel('Fitness 2');
		A = axis;
		for i = 1:n
			P = zeros(2,1);
			for k = 1:m
				P(k) = ( Pareto_Fit(i,k) - A(2*k-1) )/(A(2*k) - A(2*k-1))*1.01;
			end
			MSG = sprintf('%d',i);
			text(P(1),P(2), MSG, 'Units','normalized');
		end
	elseif (m==3)	% 3-D
		MSG = sprintf('Fitness Values\nIndivids in Pareto set = %d',n);
		plot3(Pareto_Fit(:,1),Pareto_Fit(:,2),Pareto_Fit(:,3),'ro','MarkerSize', 5);grid;
		title(MSG);xlabel('Fintess 1');ylabel('Fitness 2');zlabel('Fitness 3');
	end
	drawnow;
end
return