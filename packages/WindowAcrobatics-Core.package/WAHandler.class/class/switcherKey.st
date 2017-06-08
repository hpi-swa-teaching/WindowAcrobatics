as yet unclassified
switcherKey

	<preference: 'Switch to Last Window upon pressing Cmd/Alt and:' 
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to switch to last window'
		type: #String>
		
	^ ((self keyToDescriptionBindingsDashboard) keyAtValue: 'lastWindow') copyFrom: 6 to: ((self keyToDescriptionBindingsDashboard) keyAtValue: 'lastWindow') size - 1