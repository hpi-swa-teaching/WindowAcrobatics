preferences
activateAlignment: aBool
	
	self alignmentActive: (self alignmentActive not).
	self alignmentActive ifTrue: [self keyToDescriptionBindingsAlignment: nil]. 