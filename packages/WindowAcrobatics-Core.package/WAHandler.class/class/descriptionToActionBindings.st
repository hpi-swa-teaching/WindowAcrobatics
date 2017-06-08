accessing
descriptionToActionBindings

	self switcher ifNil: [self switcher: WASwitcher new].
	self aligner ifNil: [self aligner: WAAligner new].
	^ DescriptionToActionBindings ifNil: [DescriptionToActionBindings := Dictionary new 
		add: 'alignLeft'->[self aligner alignLeft]; 
		add: 'alignRight'->[self aligner alignRight];
		add: 'alignTop'->[self aligner alignTop];
		add: 'alignBottom'->[self aligner alignBottom];
		add: 'alignFull'->[self aligner alignFull];
		add: 'openDashboard'->[WADashboard open.];
		add: 'lastWindow'->[self switcher selectLastWindow];
		yourself.]