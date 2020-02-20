preferences - keys
keyToOpenDashboard: aString

	^ self
		mapKeyString: aString
		toBindings: self keyToDescriptionBindingsDashboard
		at: #openDashboard