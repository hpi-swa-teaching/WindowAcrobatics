preferences
openDashboardKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsDashboard keyAtValue: #openDashboard.
	(self keyToDescriptionBindingsDashboard includesKey: ('<Cmd-', aString, '>')) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsDashboard removeKey: deprecatedKey.
	self keyToDescriptionBindingsDashboard add: ('<Cmd-', aString, '>') -> #openDashboard.