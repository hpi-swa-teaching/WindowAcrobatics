testing
testAlignTwoLastUsedWindows

	|window1 window2|
	
	window1 := windowTest openNewWindow.
	window2 := windowTest openNewWindow.
	
	WAAligner new alignLastUsedWindows: 2.
	
	self assert: window1 width near: World width / 2 description: 'Width is incorrect'.
	self assert: window2 height near: World height - self dockingBarHeight description: 'Height is incorrect'.