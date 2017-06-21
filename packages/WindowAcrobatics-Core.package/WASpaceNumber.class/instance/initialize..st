as yet unclassified
initialize: aNumber

	super initialize.
	self seconds: 1;
		extent: ActiveWorld extent x@70;
		clipSubmorphs: true;
		disableTableLayout: true;
		color: (Color black alpha: 0.6);
		layoutPolicy: TableLayout new; 
			listDirection: #leftToRight;
			listCentering: #center;
			layoutInset: 10; 
			cellInset: 5.
	
	1 to: 3 do: [:n | n = aNumber ifTrue: [self addNumberToMorph: n colored: Color white] ifFalse: [self addNumberToMorph: n colored: Color gray]].
	
	self openInWorld.