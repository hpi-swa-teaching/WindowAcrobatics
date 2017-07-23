visualization
initializeVisualization 
	
	self visualization: (Morph new position: self defaultVisualizationPosition;
		extent: self defaultVisualizationExtent;
		color:  Color black;
		lock).
	
	self setVisualizationLayout.
	
	1 to: self numberPages do: [:n | n = self currentPage ifTrue: [self addNumberToVisualization: n colored: Color white ] ifFalse: [self addNumberToVisualization: n colored: Color gray]].
	
	self visualization openInWorld.