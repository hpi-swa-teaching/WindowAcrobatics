preferences
spaceRight

	<preference: 'Switch To Space Right From You' 
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to switch to space right from you'
		type: #String>
		
	^ self stripOffCmd: (self keyToDescriptionBindingsSwitching keyAtValue: 'spaceRight').