preferences
alignBottomKey: aString

	|deprecatedKey|
	
	deprecatedKey := WAHandler keyToDescriptionBindingsAlignment keyAtValue: 'alignBottom'.
	(WAHandler keyToDescriptionBindingsAlignment includesKey: aString) ifTrue: [^ false "already in use"].
	WAHandler keyToDescriptionBindingsAlignment removeKey: deprecatedKey.
	WAHandler keyToDescriptionBindingsAlignment add: ('<Cmd-', aString, '>')-> 'alignBottom'.