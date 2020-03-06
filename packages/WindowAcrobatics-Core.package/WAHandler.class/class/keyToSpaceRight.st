preferences - keys
keyToSpaceRight
	<preference: 'Switch To Space Right From You with Cmd/Alt and:' 
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to switch to space right from you'
		type: #String>
		
	^ self nameForKey: (self keyToDescriptionBindingsSwitching keyAtValue: #spaceRight)