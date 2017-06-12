as yet unclassified
testSwitcherOnMethodCall

	|firstWindow secondWindow activeWindow newActiveWindow|
	
	firstWindow := Workspace open.
	secondWindow := Browser open.
	activeWindow := ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]].
	
	WASwitcher new selectLastWindow.
	
	newActiveWindow := ActiveWorld submorphs select: [:m | m isSystemWindow and: [m isLookingFocused]].
	
	self assert: (newActiveWindow ~= activeWindow) description: 'switsching failed'.