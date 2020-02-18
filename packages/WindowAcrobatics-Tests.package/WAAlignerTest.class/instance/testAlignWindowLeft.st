testing
testAlignWindowLeft
	
	WAAligner new align: #left.
	
	self
		assertBoundsFor: window
		left: 0 top: self dockingBarHeight
		width: World width / 2 height: World height - self dockingBarHeight