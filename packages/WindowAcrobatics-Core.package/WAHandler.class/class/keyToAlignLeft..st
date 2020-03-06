preferences - keys
keyToAlignLeft: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsAlignment
		at: #alignLeft