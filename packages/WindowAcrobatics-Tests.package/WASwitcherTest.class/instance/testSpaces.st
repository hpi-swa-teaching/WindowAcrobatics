as yet unclassified
testSpaces

	|window|
	
	window := SystemWindow new openInWorld.

	WASwitcher new spaceToRight.
	
	self assert: (((WASwitcher new getWindowsInCurrentSpace) includes: window) not) description: 'Spaces failed.'.
	
	WASwitcher new spaceToLeft.
	
	self assert: ((WASwitcher new getWindowsInCurrentSpace) includes: window) description: 'Spaces failed.'.
	
	window delete.