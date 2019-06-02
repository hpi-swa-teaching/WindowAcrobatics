as yet unclassified
keyDown: anEvent

	anEvent keyValue = 16 ifTrue: [
		^ self class mouseEnter: grips anyOne].
	super keyDown: anEvent