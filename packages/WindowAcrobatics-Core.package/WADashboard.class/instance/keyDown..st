as yet unclassified
keyDown: anEvent.

	anEvent keyValue = 56 ifTrue: [
			self scrollingDirection: #left.
		].
	anEvent keyValue = 13 ifTrue: [
			self scroll.
		].