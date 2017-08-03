spaces
moveToSpaceByWindowDrag

	self handHasWindow ifTrue: [
		self handOverRightBorder ifTrue: [ self spaceToRight ].
		self handOverLeftBorder ifTrue: [ self spaceToLeft ].
		].