private
mapKeyString: aKeyString toBindings: bindings at: bindingKey

	self flag: #discussion. "ct: Do we indeed need to hard-code each key preference in two methods? See Preferences >> #addPragmaPreference:. Not sure whether it would be okay to register our preferences manually."
	^ self
		mapKey: (self keyFromString: aKeyString)
		toBindings: bindings
		at: bindingKey