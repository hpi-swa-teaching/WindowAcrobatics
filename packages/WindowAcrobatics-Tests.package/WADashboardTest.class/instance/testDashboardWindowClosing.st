as yet unclassified
testDashboardWindowClosing

	|numberOfWindows|
	
	numberOfWindows := (ActiveWorld submorphs select: [:m | m isSystemWindow]) size.
	SystemWindow new openInWorld.
	
	self assert: ((ActiveWorld submorphs select: [:m | m isSystemWindow]) size = (numberOfWindows + 1)).
	
	WAExpose open selectPreviousWindow closeWindow delete.
	
	self assert: ((ActiveWorld submorphs select: [:m | m isSystemWindow]) size = numberOfWindows ).