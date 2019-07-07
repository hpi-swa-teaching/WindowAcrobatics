testing
testAlignWindowRight
	
	WAAligner new align: #right.
	
	self
		assertBoundsFor: window
		left: World width / 2 top: self dockingBarHeight
		width: World width / 2 height: World height - self dockingBarHeight