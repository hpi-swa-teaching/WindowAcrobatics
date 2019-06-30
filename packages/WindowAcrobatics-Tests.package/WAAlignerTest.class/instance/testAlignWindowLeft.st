testing
testAlignWindowLeft
	
	|window|
	
	window := self openNewWindow.
	WAAligner new align: #left.
	self assert: (window position = (0 @ 18)) description: 'Window didnt align correctly (left).'.
	self assert: (window height = (World height - 18)) description: 'Window didnt align correctly (left).'.