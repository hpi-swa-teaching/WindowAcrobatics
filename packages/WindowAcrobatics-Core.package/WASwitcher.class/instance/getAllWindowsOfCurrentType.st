as yet unclassified
getAllWindowsOfCurrentType

	|type|
	
	type := self getCurrentWindowType.

	^ self getWindowsInCurrentSpace select: [ :w | w model isKindOf: type class].