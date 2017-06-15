accessing
descriptionToActionBindings

	^ DescriptionToActionBindings ifNil: [DescriptionToActionBindings := Dictionary new 
		add: 'alignLeft'->[self aligner align: #left]; 
		add: 'alignRight'->[self aligner align: #right];
		add: 'alignTop'->[self aligner align: #top];
		add: 'alignBottom'->[self aligner align: #bottom];
		add: 'alignFull'->[self aligner align: #full];
		add: 'alignLastUsedWindows' ->[self aligner alignLastUsedWindows];
		add: 'openDashboard'->[WADashboard open.];
		add: 'lastWindow'->[self switcher selectLastWindow];
		yourself.]