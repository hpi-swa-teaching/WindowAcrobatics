testing
testAlignWindowTopLeft
	
	WAAligner new
		align: #top;
		align: #left.
	
	self
		assertBoundsFor: window
		left: 0 top: self dockingBarHeight
		width: World width / 2 height: World height - self dockingBarHeight / 2