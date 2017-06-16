accessing
keyToDescriptionBindingsSwitching

	KeyToDescriptionBindingsSwitching ifNil: [KeyToDescriptionBindingsSwitching  := WAHandler defaultKeybindingsSwitching].
	
	^ KeyToDescriptionBindingsSwitching 