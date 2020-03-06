preferences - keys
keyToAlignRight: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsAlignment
		at: #alignRight