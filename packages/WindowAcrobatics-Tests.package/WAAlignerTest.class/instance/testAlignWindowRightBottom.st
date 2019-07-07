testing
testAlignWindowRightBottom
	
	WAAligner new
		align: #right;
		align: #bottom.
	
	self
		assertBoundsFor: window
		left: World width / 2 top: World height - self dockingBarHeight / 2 + self dockingBarHeight
		width: World width / 2 height: World height - self dockingBarHeight / 2