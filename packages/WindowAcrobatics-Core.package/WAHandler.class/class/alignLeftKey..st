preferences
alignLeftKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsAlignment keyAtValue: 'alignLeft'.
	(self keyToDescriptionBindingsAlignment includesKey: aString) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsAlignment removeKey: deprecatedKey.
	self keyToDescriptionBindingsAlignment add: ('<Cmd-', aString, '>') -> 'alignLeft'.