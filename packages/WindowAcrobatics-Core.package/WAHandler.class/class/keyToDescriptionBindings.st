accessing
keyToDescriptionBindings

	KeyToDescriptionBindings ifNil: [self keyToDescriptionBindings: self defaultKeybindings].
	
	^ KeyToDescriptionBindings