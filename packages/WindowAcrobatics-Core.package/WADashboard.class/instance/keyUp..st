as yet unclassified
keyUp: anEvent.
 
	anEvent keyValue = 13 ifFalse: [
			HasDashboard := false.
			self activateWindow.
			self delete.
		].
	anEvent keyValue = 56 ifTrue: [
			self scrollingDirection: #right.
		].