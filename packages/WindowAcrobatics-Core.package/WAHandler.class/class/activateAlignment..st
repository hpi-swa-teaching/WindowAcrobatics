preferences
activateAlignment: aBool
	
	self alignmentActive: (self alignmentActive not).
	"reset bidings
	self alignmentActive ifTrue: [self keyToDescriptionBindingsAlignment: nil]."