as yet unclassified
testAlignWindowBottom
	
	|window|
	
	window := SystemWindow new openInWorld.
	WAAligner new alignBottom.
	self assert: (window width = World width) description: 'Window didnt align correctly (bottom).'.
	window delete.