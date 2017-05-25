as yet unclassified
keyDown: anEvent.
 
	anEvent keyValue = 13 ifTrue: [
			self selectNextWindow.
		]