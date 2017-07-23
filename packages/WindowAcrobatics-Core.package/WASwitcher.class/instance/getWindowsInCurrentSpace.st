spaces
getWindowsInCurrentSpace
	
	^ self getSystemWindows select: [ :w | w position x >= 0 and: [w position x < ActiveWorld extent x]].