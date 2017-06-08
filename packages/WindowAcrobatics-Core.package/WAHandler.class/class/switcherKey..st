as yet unclassified
switcherKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindings keyAtValue: 'lastWindow'.
	(self keyToDescriptionBindings includesKey: aString) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindings removeKey: deprecatedKey.
	self keyToDescriptionBindings add: aString-> 'lastWindow'.