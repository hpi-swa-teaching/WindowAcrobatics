as yet unclassified
testAlignWindowTop
	
	|window|
	
	window := SystemWindow new openInWorld.
	WAAligner new align: 'top'.
	self assert: (window position = (0@18)) description: 'Window didnt align correctly (top).'.
	window delete.