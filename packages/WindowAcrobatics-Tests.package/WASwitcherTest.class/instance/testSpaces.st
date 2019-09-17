testing
testSpaces

	| window |
	window := windowTest openNewWindow.
	
	WASwitcher new spaceToRight.
	self deny: (WAAligner new windowsInCurrentSpace includes: window).
	
	WASwitcher new spaceToLeft.
	self assert: (WAAligner new windowsInCurrentSpace includes: window).