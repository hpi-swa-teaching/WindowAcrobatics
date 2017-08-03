accessing
descriptionToActionBindings

	^ DescriptionToActionBindings ifNil: [DescriptionToActionBindings := Dictionary new 
		add: 'alignLeft'->[self instance aligner align: #left]; 
		add: 'alignRight'->[self instance aligner align: #right];
		add: 'alignTop'->[self instance aligner align: #top];
		add: 'alignBottom'->[self instance aligner align: #bottom];
		add: 'alignFull'->[self instance aligner align: #full];
		add: 'openDashboard'->[WAExpose open];
		add: 'lastWindow'->[self instance switcher selectLastWindow];
		add: 'cycle'->[self instance switcher cycleThroughTypes];
		add: 'spaceLeft' -> [self instance switcher spaceToLeft];
		add: 'spaceRight' -> [self instance switcher spaceToRight];
		add: 'alignLastUsedWindows' ->[self instance aligner alignLastUsedWindows: self numberOfLastWindows];
		yourself.]