as yet unclassified
testWindowSwitching

	|window1 window2|
	
	window1 := SystemWindow new openInWorld.
	window2 := SystemWindow new openInWorld.
	
	WAExpose open selectPreviousWindow activateWindow.
	
	self assert: (((ActiveWorld submorphs select: [:m | m isSystemWindow]) at: 1) == window2) description: 'Switchign within dashboard didnt work'.
	
	WAExpose open selectPreviousWindow selectNextWindow activateWindow.
	
	self assert: (((ActiveWorld submorphs select: [:m | m isSystemWindow]) at: 1) == window1) description: 'Switchign within dashboard didnt work'.
	
	window1 delete.
	window2 delete.