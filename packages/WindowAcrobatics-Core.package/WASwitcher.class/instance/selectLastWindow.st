windowswitching
selectLastWindow
	
	self getSystemWindows ifNotEmpty: [self getSystemWindows size > 1 ifTrue: [
			self switchLastAndCurrent: self getSystemWindows.]].
