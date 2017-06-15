as yet unclassified
testAlignLastUsedWindows

	|window1 window2 window3|
	
	window1 := SystemWindow new openInWorld.
	window2 := SystemWindow new openInWorld.
	window3 := SystemWindow new openInWorld.
	
	WAAligner new alignLastUsedWindows.
	
	self assert: (window1 width = (World width / 2) asInteger) description: 'Width is incorrect'.
	self assert: (window2 height = ((World height - 18) / 2) asInteger) description: 'Height is incorrect'.
	self assert: (window3 position = (0 @ 18)) description: 'Order of windows is incorrect'.
	
	window1 delete.
	window2 delete.
	window3 delete.