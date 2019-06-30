testing
testAlignWindowBottom
	
	|window|
	
	window := self openNewWindow.
	WAAligner new align: #bottom.
	self assert: (window width = World width) description: 'Window didnt align correctly (bottom).'.