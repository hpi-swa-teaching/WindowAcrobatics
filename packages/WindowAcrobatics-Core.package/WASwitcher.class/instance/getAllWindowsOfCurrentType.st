as yet unclassified
getAllWindowsOfCurrentType

	|type|
	
	type := self getCurrentWindowType.
	
	^ self getSystemWindows select: [ :w | w label == type].