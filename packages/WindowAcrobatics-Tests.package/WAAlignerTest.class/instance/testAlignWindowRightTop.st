testing
testAlignWindowRightTop
	
	|window|
	window := self openNewWindow.
	WAAligner new
		align: #right;
		align: #top.
	
	self
		assertBoundsFor: window
		left: World width / 2 top: 18
		width: World width / 2 height: World height - 18 / 2