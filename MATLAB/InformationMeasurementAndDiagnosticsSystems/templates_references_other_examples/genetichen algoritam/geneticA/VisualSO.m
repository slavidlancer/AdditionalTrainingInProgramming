function [bestFitnessValue_old] = VisualSO( visualize, graph, iteration, ...
			visual_iter, bestFitnessValue, bestFitnessValue_old, BESTGens, ...
			FigHandle, RecordFitness)

if ( visualize >= 0 )   % temporary result allowed?
	if ( visualize == 1 )	% SOME results
		if bestFitnessValue >= 0
			if bestFitnessValue < bestFitnessValue_old/2 | (~rem(iteration, visual_iter))
				DispResultsSO( iteration, bestFitnessValue, BESTGens );
				if ( graph > 0 )
					PlotResultsSO( iteration, FigHandle, RecordFitness );
				end                    
				bestFitnessValue_old = bestFitnessValue;
			end
		else
			if bestFitnessValue < bestFitnessValue_old*2 | (~rem(iteration, visual_iter))
				DispResultsSO( iteration, bestFitnessValue, BESTGens )
				if ( graph > 0 )
					PlotResultsSO( iteration, FigHandle, RecordFitness );
				end
				bestFitnessValue_old = bestFitnessValue;
			end
		end
	elseif ( visualize == 2 )	% ALL results
		DispResultsSO( iteration, bestFitnessValue, BESTGens );
		if ( graph > 0 )
			PlotResultsSO( iteration, FigHandle, RecordFitness );
		end
	else % NO results, only dots sign action is taking place
		if ( rem(iteration, 20) == 0 )       fprintf('.');
			if (rem(iteration, 1000) == 0)   fprintf('\n');
			end
		end
	end
end % if visualize
return