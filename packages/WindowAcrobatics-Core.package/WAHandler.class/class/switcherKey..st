as yet unclassified
switcherKey: aString

	|deprecatedKey|
	
	deprecatedKey := self keyToDescriptionBindingsDashboard  keyAtValue: 'lastWindow'.
	(self keyToDescriptionBindingsDashboard  includesKey: aString) ifTrue: [^ false "already in use"].
	self keyToDescriptionBindingsDashboard  removeKey: deprecatedKey.
	self keyToDescriptionBindingsDashboard add: ('<Cmd-', aString, '>') -> 'lastWindow'.