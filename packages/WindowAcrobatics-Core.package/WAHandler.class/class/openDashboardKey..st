preferences
openDashboardKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindings keyAtValue: 'openDashboard'.
	(self keyToDescriptionBindings includesKey: aString) ifTrue: [^ false "already in use"].
	self removeKey: deprecatedKey.
	self keyToDescriptionBindings add: aString-> 'openDashboard'.