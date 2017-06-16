preferences
activateSwitching: aBool
	
	self switchingActive:  (self switchingActive not).
	self switchingActive ifTrue: [self keyToDescriptionBindingsSwitching: nil]. 