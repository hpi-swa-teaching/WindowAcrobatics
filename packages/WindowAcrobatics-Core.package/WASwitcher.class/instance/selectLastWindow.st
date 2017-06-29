windowswitching
selectLastWindow
	
	| windowsInSpace |
	
	windowsInSpace := self getWindowsInCurrentSpace.
	windowsInSpace ifNotEmpty: [windowsInSpace size > 1 ifTrue: [
			self switchLastAndCurrent: windowsInSpace.]].
