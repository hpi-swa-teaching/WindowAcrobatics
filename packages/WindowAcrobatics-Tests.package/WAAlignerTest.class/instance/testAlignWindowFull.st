testing
testAlignWindowFull
	
	|window|
	
	window := self openNewWindow.
	WAAligner new align: #full.
	self assert: (window position = (0@18)) description: 'Window didnt align correctly (top).'.