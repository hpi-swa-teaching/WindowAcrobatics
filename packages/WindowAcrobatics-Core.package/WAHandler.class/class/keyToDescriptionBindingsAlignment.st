accessing
keyToDescriptionBindingsAlignment

	KeyToDescriptionBindingsAlignment ifNil: [KeyToDescriptionBindingsAlignment := WAHandler defaultKeybindingsAlignment].
	
	^ KeyToDescriptionBindingsAlignment