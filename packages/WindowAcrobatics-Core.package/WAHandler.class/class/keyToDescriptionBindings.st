accessing
keyToDescriptionBindings
	KeyToDescriptionBindings ifNil: [self keyToDescriptionBindings:
		(Dictionary new add: '<Cmd-j>'->'alignLeft'; yourself). ].
	^ KeyToDescriptionBindings 