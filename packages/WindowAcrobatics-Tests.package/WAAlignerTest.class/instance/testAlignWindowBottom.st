testing
testAlignWindowBottom
	
	WAAligner new align: #bottom.
	
	self
		assertBoundsFor: window
		left: 0 top: World height - self dockingBarHeight / 2 + self dockingBarHeight
		width: World width height: World height - self dockingBarHeight / 2