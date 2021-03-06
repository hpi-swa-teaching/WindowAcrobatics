handling
descriptionToActionBindings

	^ Dictionary new 
		add: #alignLeft -> [self aligner align: #left]; 
		add: #alignRight -> [self aligner align: #right];
		add: #alignTop -> [self aligner align: #top];
		add: #alignBottom -> [self aligner align: #bottom];
		add: #alignFull -> [self aligner align: #full];
		add: #openDashboard -> [WAExpose open];
		add: #lastWindow -> [self switcher selectLastWindow];
		add: #cycle -> [self switcher cycleThroughTypes];
		add: #spaceLeft -> [self switcher spaceToLeft];
		add: #spaceRight -> [self switcher spaceToRight];
		add: #alignLastUsedWindows -> [self aligner alignLastUsedWindows: self class numberOfLastWindows];
		yourself