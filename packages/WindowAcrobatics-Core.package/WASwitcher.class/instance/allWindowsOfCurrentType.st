helper
allWindowsOfCurrentType

	^ self windowsInCurrentSpace select: [ :w | w model asString = self typeOfKeyWindow ]