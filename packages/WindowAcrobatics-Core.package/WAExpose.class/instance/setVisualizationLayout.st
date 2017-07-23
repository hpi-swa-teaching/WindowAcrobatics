visualization
setVisualizationLayout 

	^ self visualization changeTableLayout;
			listDirection: #topToBottom;
			listCentering: #center;
			layoutInset: 20; 
			cellInset: 10.