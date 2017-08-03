spaces
windowsInCurrentSpace
	
	^ self allSystemWindows select: [ :w | w position x >= 0 and: [w position x < ActiveWorld extent x ]].