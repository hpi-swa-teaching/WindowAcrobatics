preferences
keyToDescriptionBindingsAlignment

	KeyToDescriptionBindingsAlignment ifNil: [KeyToDescriptionBindingsAlignment := WAHandler instance defaultKeybindingsAlignment].
	
	^ KeyToDescriptionBindingsAlignment