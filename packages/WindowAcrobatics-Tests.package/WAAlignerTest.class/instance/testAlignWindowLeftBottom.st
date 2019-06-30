testing
testAlignWindowLeftBottom
	
	|window|
	window := self openNewWindow.
	WAAligner new
		align: #left;
		align: #bottom.
	
	self
		assertBoundsFor: window
		left: 0 top: World height - 18 / 2 + 18
		width: World width / 2 height: World height - 18 / 2