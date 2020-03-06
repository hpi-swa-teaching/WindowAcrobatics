preferences - keys
keyToSpaceLeft
	<preference: 'Switch To Space Left From You with Cmd/Alt and:' 
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to switch to space left from you'
		type: #String>
		
	^ self nameForKey: (self keyToDescriptionBindingsSwitching keyAtValue: #spaceLeft)