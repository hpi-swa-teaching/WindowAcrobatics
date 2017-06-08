as yet unclassified
switcherKey

	<preference: 'Switch to Last Window' 
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to switch to last window'
		type: #String>
		
	^ (self keyToDescriptionBindings) keyAtValue: 'lastWindow'