testing
testAlignWindowBottom
	
	|window|
	window := self openNewWindow.
	WAAligner new align: #bottom.
	
	self
		assertBoundsFor: window
		left: 0 top: World height - 18 / 2 + 18
		width: World width height: World height - 18 / 2