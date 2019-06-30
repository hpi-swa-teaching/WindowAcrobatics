testing
testAlignWindowRightBottom
	
	|window|
	window := self openNewWindow.
	WAAligner new
		align: #right;
		align: #bottom.
	
	self
		assertBoundsFor: window
		left: World width / 2 top: World height - 18 / 2 + 18
		width: World width / 2 height: World height - 18 / 2