function PlotResultsSO( iteration, FigHandle, RecordFitness )
	figure(FigHandle);
	    plot(RecordFitness,'ro', 'MarkerSize', 5); xlabel('generation'); ylabel('Fitness Value');
		text(0.65,0.9,['Best = ', num2str(RecordFitness(iteration))],'Units','normalized');
    drawnow;
return