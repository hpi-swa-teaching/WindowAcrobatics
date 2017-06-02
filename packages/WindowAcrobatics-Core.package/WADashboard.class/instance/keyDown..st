as yet unclassified
keyDown: anEvent.

	anEvent keyValue = 56 ifTrue: [
			self scrollingDirection: #left.
		].
	"(anEvent keyString = (WAHandler keyToDescriptionBindings keyAtValue: 'openDashboard')) -- does not match..."
	anEvent keyValue = 13 ifTrue: [
			self scroll.
		].