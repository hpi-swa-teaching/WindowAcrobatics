preferences
cycleWindows: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsSwitching keyAtValue: 'cycle'.
	(self keyToDescriptionBindingsSwitching includesKey: ('<Cmd-', aString, '>')) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsSwitching removeKey: deprecatedKey.
	self keyToDescriptionBindingsSwitching add: ('<Cmd-', aString, '>') -> 'cycle'.