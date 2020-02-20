preferences - keys
keyToSwitchWindow: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsDashboard
		at: #lastWindow