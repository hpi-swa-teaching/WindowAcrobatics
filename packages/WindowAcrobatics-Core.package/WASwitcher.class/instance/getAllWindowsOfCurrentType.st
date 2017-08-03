as yet unclassified
getAllWindowsOfCurrentType

	|type|
	
	type := self getCurrentWindowType.

	^ self windowsInCurrentSpace select: [ :w | w model isKindOf: type class].