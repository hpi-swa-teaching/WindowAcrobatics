preferences
spaceRight: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsDashboard keyAtValue: 'spaceRight'.
	(self keyToDescriptionBindingsDashboard includesKey: ('<Cmd-', aString, '>')) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsDashboard removeKey: deprecatedKey.
	self keyToDescriptionBindingsDashboard add: ('<Cmd-', aString, '>') -> 'spaceRight'.