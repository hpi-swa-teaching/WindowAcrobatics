as yet unclassified
alignLeftKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindings keyAtValue: 'alignLeft'.
	self keyToDescriptionBindings removeKey: deprecatedKey.
	self keyToDescriptionBindings add: aString-> 'alignLeft'.