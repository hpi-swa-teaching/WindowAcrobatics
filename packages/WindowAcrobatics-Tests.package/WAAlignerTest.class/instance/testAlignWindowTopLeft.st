testing
testAlignWindowTopLeft
	
	|window|
	window := self openNewWindow.
	WAAligner new
		align: #top;
		align: #left.
	
	self
		assertBoundsFor: window
		left: 0 top: 18
		width: World width / 2 height: World height - 18 / 2