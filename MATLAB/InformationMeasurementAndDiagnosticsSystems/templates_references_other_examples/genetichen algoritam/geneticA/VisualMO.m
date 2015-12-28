function old_Pareto_best = VisualMO( visualize, graph, iteration, visual_iter, ...
					Pareto_Set, Pareto_Fit, old_Pareto_best, FigHandle);

if ( visualize >= 0 )   % temporary result allowed?
	if ( visualize == 1 )		% some results
		if ( old_Pareto_best > Pareto_Fit(1,:) )  
			TD = 1;
			old_Pareto_best = Pareto_Fit(1,:);
		else	TD = 0;
		end
		if ( TD == 1 | (~rem(iteration, visual_iter) ) )
			DispResultsMO( iteration, Pareto_Fit, Pareto_Set, 0 );
			if ( graph > 0 )
				PlotResultsMO( iteration, FigHandle, Pareto_Fit );
			end                    
		end
	elseif ( visualize == 2 )	% all results
		DispResultsMO( iteration, Pareto_Fit, Pareto_Set, 1 );
		if ( graph > 0 )
			PlotResultsMO( iteration, FigHandle, Pareto_Fit );
		end
	else % no results, only dots sign action is taking place
		if ( rem(iteration, 20) == 0 )       fprintf('.');
			if (rem(iteration, 5000) == 0)   fprintf('\n');
			end
		end
	end
end % if visualize

return