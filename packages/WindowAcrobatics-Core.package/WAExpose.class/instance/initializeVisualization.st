visualization
initializeVisualization 

	self visualization: (Morph new position: ActiveWorld extent x - 45 @ 0;
		extent: 45@ActiveWorld extent y;
		clipSubmorphs: true;
		disableTableLayout: true;
		color:  (Color black);
		changeTableLayout;
		listDirection: #topToBottom;
		listCentering: #center;
		cellInset: 10;
		layoutInset: 20).
	
	1 to: self numberPages do: [:n | n = self currentPage ifTrue: [self addNumberToSign: n colored: Color white ] ifFalse: [self addNumberToSign: n colored: Color gray]].
	
	self visualization openInWorld.