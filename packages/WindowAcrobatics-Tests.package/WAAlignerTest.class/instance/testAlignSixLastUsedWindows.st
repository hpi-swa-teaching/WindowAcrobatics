testing
testAlignSixLastUsedWindows

	|window1 window2 window3 window4 window5 window6|
	
	window1 := windowTest openNewWindow.
	window2 := windowTest openNewWindow.
	window3 := windowTest openNewWindow.
	window4 := windowTest openNewWindow.
	window5 := windowTest openNewWindow.
	window6 := windowTest openNewWindow.
	
	WAAligner new alignLastUsedWindows: 6.
	
	self assert: window1 width near: World width / 2 description: 'Width is incorrect'.
	self assert: window2 height near: World height - self dockingBarHeight / 3 description: 'Height is incorrect'.
	self assert: window6 position near: 0 @ self dockingBarHeight description: 'Order of windows is incorrect'.