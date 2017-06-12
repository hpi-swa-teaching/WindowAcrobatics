preferences
switcherKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsDashboard  keyAtValue: 'lastWindow'.
	(self keyToDescriptionBindingsDashboard  includesKey: ('<Cmd-', aString, '>')) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsDashboard  removeKey: deprecatedKey.
	self keyToDescriptionBindingsDashboard add: ('<Cmd-', aString, '>') -> 'lastWindow'.