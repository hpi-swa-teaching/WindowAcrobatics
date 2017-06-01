preferences
alignLeftKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindings keyAtValue: 'alignLeft'.
	(self keyToDescriptionBindings includesKey: aString) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindings removeKey: deprecatedKey.
	self keyToDescriptionBindings add: aString-> 'alignLeft'.