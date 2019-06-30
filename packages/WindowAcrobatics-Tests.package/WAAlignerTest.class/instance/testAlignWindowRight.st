testing
testAlignWindowRight
	
	|window|
	
	window := self openNewWindow.
	WAAligner new align: #right.
	self assert: (window height = (World height - 18)) description: 'Window didnt align correctly (right).'.