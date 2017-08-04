preferences
spaceRight: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsSwitching keyAtValue: #spaceRight.
	(self keyToDescriptionBindingsSwitching includesKey: ('<Cmd-', aString, '>')) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsSwitching removeKey: deprecatedKey.
	self keyToDescriptionBindingsSwitching add: ('<Cmd-', aString, '>') -> #spaceRight.