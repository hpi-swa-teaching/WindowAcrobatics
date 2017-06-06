as yet unclassified
keyUp: anEvent.
 
	anEvent keyValue = 55 ifTrue: [
			self activateWindowAndClose.
		].
	anEvent keyValue = 56 ifTrue: [
			self scrollingDirection: #right.
			^ self.
		].