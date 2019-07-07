testing
testAlignFourLastUsedWindows

	|window1 window2 window3|
	
	window1 := windowTest openNewWindow.
	window2 := windowTest openNewWindow.
	window3 := windowTest openNewWindow.
	
	WAAligner new alignLastUsedWindows: 4.
	
	self assert: window1 width near: World width / 2 description: 'Width is incorrect'.
	self assert: window2 height near: World height - self dockingBarHeight / 2 description: 'Height is incorrect'.
	self assert: window3 position near: 0 @ self dockingBarHeight description: 'Order of windows is incorrect'.