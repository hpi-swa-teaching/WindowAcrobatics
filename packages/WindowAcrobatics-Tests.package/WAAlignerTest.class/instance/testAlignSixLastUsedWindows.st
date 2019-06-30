testing
testAlignSixLastUsedWindows

	|window1 window2 window3 window4 window5 window6|
	
	window1 := self openNewWindow.
	window2 := self openNewWindow.
	window3 := self openNewWindow.
	window4 := self openNewWindow.
	window5 := self openNewWindow.
	window6 := self openNewWindow.
	
	WAAligner new alignLastUsedWindows: 6.
	
	self assert: (window1 width = (World width / 2) asInteger) description: 'Width is incorrect'.
	self assert: (window2 height = ((World height - 18) / 3) asInteger) description: 'Height is incorrect'.
	self assert: (window6 position = (0 @ 18)) description: 'Order of windows is incorrect'.