preferences
alignTopKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsAlignment keyAtValue: 'alignTop'.
	(self keyToDescriptionBindingsAlignment includesKey: aString) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsAlignment removeKey: deprecatedKey.
	self keyToDescriptionBindingsAlignment add: ('<Cmd-', aString, '>') -> 'alignTop'.