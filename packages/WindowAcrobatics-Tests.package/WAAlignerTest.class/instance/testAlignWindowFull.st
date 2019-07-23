testing
testAlignWindowFull
	
	WAAligner new align: #full.
	
	self
		assertBoundsFor: window
		left: 0 top: self dockingBarHeight
		width: World width height: World height - self dockingBarHeight