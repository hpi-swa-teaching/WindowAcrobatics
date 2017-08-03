windowswitching
selectLastWindow
	
	| windowsInSpace |
	
	windowsInSpace := self windowsInCurrentSpace.
	windowsInSpace ifNotEmpty: [windowsInSpace size > 1 ifTrue: [
			self switchLastAndCurrent: windowsInSpace.]].
