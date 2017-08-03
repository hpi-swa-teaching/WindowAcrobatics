spaces
windowsInCurrentSpace

	^ ActiveWorld submorphs select: [ :w | w isSystemWindow and: [ w position x between: 0 and: ActiveWorld extent x ]] 
