testing
testAlignWindowRightTop
	
	WAAligner new
		align: #right;
		align: #top.
	
	self
		assertBoundsFor: window
		left: World width / 2 top: self dockingBarHeight
		width: World width / 2 height: World height - self dockingBarHeight / 2