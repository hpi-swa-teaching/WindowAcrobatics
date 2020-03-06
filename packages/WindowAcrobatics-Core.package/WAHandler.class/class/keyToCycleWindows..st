preferences - keys
keyToCycleWindows: aString   

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsSwitching
		at: #cycle