as yet unclassified
keyUp: anEvent.
 
	anEvent keyValue = 13 ifFalse: [
			self activateWindowAndClose.
		].
	anEvent keyValue = 56 ifTrue: [
			self scrollingDirection: #right.
		].