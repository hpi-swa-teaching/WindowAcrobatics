as yet unclassified
testAlignWindowRight
	
	|window|
	
	window := SystemWindow new openInWorld.
	WAAligner new alignRight.
	self assert: (window height = (World height - 18)) description: 'Window didnt align correctly (right).'.
	window delete.