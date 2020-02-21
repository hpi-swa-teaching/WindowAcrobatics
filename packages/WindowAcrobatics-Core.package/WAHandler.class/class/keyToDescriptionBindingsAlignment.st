preferences
keyToDescriptionBindingsAlignment

	KeyToDescriptionBindingsAlignment ifNil: [KeyToDescriptionBindingsAlignment := self defaultKeybindingsAlignment].
	
	^ KeyToDescriptionBindingsAlignment