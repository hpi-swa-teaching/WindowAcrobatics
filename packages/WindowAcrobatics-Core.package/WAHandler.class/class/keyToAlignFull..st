preferences - keys
keyToAlignFull: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsAlignment
		at: #alignFull