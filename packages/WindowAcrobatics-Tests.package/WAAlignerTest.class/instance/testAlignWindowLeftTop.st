testing
testAlignWindowLeftTop
	
	WAAligner new
		align: #left;
		align: #top.
	
	self
		assertBoundsFor: window
		left: 0 top: self dockingBarHeight
		width: World width / 2 height: World height - self dockingBarHeight / 2