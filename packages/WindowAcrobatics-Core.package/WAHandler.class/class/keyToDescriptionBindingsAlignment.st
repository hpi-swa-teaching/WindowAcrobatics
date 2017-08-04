preferences
keyToDescriptionBindingsAlignment

	KeyToDescriptionBindingsAlignment ifNil: [KeyToDescriptionBindingsAlignment := self instance defaultKeybindingsAlignment].
	
	^ KeyToDescriptionBindingsAlignment