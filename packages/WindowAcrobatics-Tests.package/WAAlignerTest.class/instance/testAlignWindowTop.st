testing
testAlignWindowTop
	
	|window|
	window := self openNewWindow.
	WAAligner new align: #top.
	
	self
		assertBoundsFor: window
		left: 0 top: 18
		width: World width height: World height - 18 / 2