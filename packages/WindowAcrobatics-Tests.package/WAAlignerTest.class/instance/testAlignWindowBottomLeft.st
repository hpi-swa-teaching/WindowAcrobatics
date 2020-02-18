testing
testAlignWindowBottomLeft
	
	WAAligner new
		align: #bottom;
		align: #left.
	
	self
		assertBoundsFor: window
		left: 0 top: World height - self dockingBarHeight / 2 + self dockingBarHeight
		width: World width / 2 height: World height - self dockingBarHeight / 2