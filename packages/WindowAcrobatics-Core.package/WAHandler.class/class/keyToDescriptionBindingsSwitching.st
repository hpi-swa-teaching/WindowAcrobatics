preferences
keyToDescriptionBindingsSwitching

	KeyToDescriptionBindingsSwitching ifNil: [KeyToDescriptionBindingsSwitching  := WAHandler instance defaultKeybindingsSwitching].
	
	^ KeyToDescriptionBindingsSwitching 