preferences
keyToDescriptionBindingsSwitching

	KeyToDescriptionBindingsSwitching ifNil: [KeyToDescriptionBindingsSwitching  := self instance defaultKeybindingsSwitching].
	
	^ KeyToDescriptionBindingsSwitching 