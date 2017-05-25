as yet unclassified
keyUp: anEvent.
 
	anEvent keyValue = 13 ifFalse: [
			self activateWindow.
			self delete.
		]