preferences - keys
keyToAlignLastUsedWindows: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsAlignment
		at: #alignLastUsedWindows