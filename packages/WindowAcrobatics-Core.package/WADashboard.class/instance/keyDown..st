as yet unclassified
keyDown: anEvent.

	anEvent keyValue = 56 ifTrue: [
			self scrollingDirection: #left.
		].
	"(anEvent keyString = (WAHandler keyToDescriptionBindings keyAtValue: 'openDashboard')) -- does not match..."
	anEvent keyValue = 55 ifFalse: [
			self scroll.
		].