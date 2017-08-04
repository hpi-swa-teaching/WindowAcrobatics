preferences
spaceLeft: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsSwitching keyAtValue: #spaceLeft.
	(self keyToDescriptionBindingsSwitching includesKey: ('<Cmd-', aString, '>')) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsSwitching removeKey: deprecatedKey.
	self keyToDescriptionBindingsSwitching add: ('<Cmd-', aString, '>') -> #spaceLeft.