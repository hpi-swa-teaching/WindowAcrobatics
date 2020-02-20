preferences - keys
keyToSpaceRight: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsSwitching
		at: #spaceRight