as yet unclassified
testAlignWindowFull
	
	|window|
	
	window := SystemWindow new openInWorld.
	WAAligner new align: #full.
	self assert: (window position = (0@18)) description: 'Window didnt align correctly (top).'.
	window delete.