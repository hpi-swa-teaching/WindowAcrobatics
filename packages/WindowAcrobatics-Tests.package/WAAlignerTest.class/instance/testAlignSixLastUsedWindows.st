as yet unclassified
testAlignSixLastUsedWindows

	|window1 window2 window3 window4 window5 window6|
	
	window1 := SystemWindow new openInWorld.
	window2 := SystemWindow new openInWorld.
	window3 := SystemWindow new openInWorld.
	window4 := SystemWindow new openInWorld.
	window5 := SystemWindow new openInWorld.
	window6 := SystemWindow new openInWorld.
	
	WAAligner new alignLastUsedWindows: 6.
	
	self assert: (window1 width = (World width / 2) asInteger) description: 'Width is incorrect'.
	self assert: (window2 height = ((World height - 18) / 3) asInteger) description: 'Height is incorrect'.
	self assert: (window6 position = (0 @ 18)) description: 'Order of windows is incorrect'.
	
	window1 delete.
	window2 delete.
	window3 delete.
	window4 delete.
	window5 delete.
	window6 delete.