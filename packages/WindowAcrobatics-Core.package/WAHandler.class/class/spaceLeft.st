preferences
spaceLeft

	<preference: 'Switch To Space Left From You' 
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to switch to space left from you'
		type: #String>
		
	^ self stripOffCmd: (self keyToDescriptionBindingsDashboard keyAtValue: 'spaceLeft').