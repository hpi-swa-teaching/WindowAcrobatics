spaces
windowsInCurrentSpace

	^ ActiveWorld submorphs select: [ :w | w isSystemWindow and: w position x >= 0 and: [w position x < ActiveWorld extent x]]. 