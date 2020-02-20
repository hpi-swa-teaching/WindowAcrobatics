preferences - keys
keyToSpaceLeft: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsSwitching
		at: #spaceLeft