switching
selectLastWindow
	
	self windowsInCurrentSpace size > 1 ifTrue: [ self switchLastAndCurrent: self windowsInCurrentSpace ].