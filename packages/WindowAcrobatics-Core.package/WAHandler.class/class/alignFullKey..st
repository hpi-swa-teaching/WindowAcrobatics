preferences
alignFullKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindings keyAtValue: 'alignFull'.
	(self keyToDescriptionBindings includesKey: aString) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindings removeKey: deprecatedKey.
	self keyToDescriptionBindings add: aString-> 'alignFull'.