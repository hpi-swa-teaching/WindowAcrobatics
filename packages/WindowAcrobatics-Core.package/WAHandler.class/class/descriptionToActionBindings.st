accessing
descriptionToActionBindings

	Aligner ifNil: [Aligner := WAAligner new].
	^ DescriptionToActionBindings ifNil: [DescriptionToActionBindings := Dictionary new 
		add: 'alignLeft'->[Aligner alignLeft]; 
		add: 'alignRight'->[Aligner alignRight];
		add: 'alignTop'->[Aligner alignTop];
		add: 'alignBottom'->[Aligner alignBottom];
		add: 'alignFull'->[Aligner alignFull];
		add: 'openDashboard'->[WADashboard open.];
		yourself.]