as yet unclassified
testAlignTwoLastUsedWindows

	|window1 window2|
	
	window1 := SystemWindow new openInWorld.
	window2 := SystemWindow new openInWorld.
	
	WAAligner new alignLastUsedWindows: 2.
	
	self assert: (window1 width = (World width / 2) asInteger) description: 'Width is incorrect'.
	self assert: (window2 height = (World height - 18) asInteger) description: 'Height is incorrect'.
	
	window1 delete.
	window2 delete.