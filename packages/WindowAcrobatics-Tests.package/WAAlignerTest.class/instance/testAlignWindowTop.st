testing
testAlignWindowTop
	
	WAAligner new align: #top.
	
	self
		assertBoundsFor: window
		left: 0 top: self dockingBarHeight
		width: World width height: World height - self dockingBarHeight / 2