preferences - keys
keyToAlignTop: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsAlignment
		at: #alignTop