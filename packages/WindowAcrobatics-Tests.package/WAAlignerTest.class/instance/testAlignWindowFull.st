as yet unclassified
testAlignWindowFull
	
	|window|
	
	window := SystemWindow new openInWorld.
	WAAligner new alignFull.
	self assert: (window position = (0@18)) description: 'Window didnt align correctly (top).'.
	window delete.