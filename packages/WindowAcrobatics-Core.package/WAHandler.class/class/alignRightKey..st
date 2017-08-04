preferences
alignRightKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsAlignment keyAtValue: #alignRight.
	(self keyToDescriptionBindingsAlignment includesKey: ('<Cmd-', aString, '>')) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsAlignment removeKey: deprecatedKey.
	self keyToDescriptionBindingsAlignment add: ('<Cmd-', aString, '>') -> #alignRight.