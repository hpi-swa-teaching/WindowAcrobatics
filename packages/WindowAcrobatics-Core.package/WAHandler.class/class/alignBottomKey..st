preferences
alignBottomKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsAlignment keyAtValue: 'alignBottom'.
	(self keyToDescriptionBindingsAlignment includesKey: aString) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsAlignment removeKey: deprecatedKey.
	self keyToDescriptionBindingsAlignment add: ('<Cmd-', aString, '>')-> 'alignBottom'.