preferences
activateSwitching: aBool
	
	self switchingActive:  (self switchingActive not).
	"reset bindings
	self switchingActive ifTrue: [self keyToDescriptionBindingsSwitching: nil]. "