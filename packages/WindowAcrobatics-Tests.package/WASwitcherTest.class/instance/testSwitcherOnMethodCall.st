testing
testSwitcherOnMethodCall

	| firstWindow secondWindow activeWindow newActiveWindow |
	firstWindow := windowTest openNewWindow.
	secondWindow := windowTest openNewWindow.
	activeWindow := ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]].
	
	WASwitcher new selectLastWindow.
	
	newActiveWindow := ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]].
	self deny: newActiveWindow == activeWindow.