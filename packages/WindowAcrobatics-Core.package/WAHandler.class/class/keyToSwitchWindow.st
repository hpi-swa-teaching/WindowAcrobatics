preferences - keys
keyToSwitchWindow
	<preference: 'Switch to Last Window upon pressing Cmd/Alt and:' 
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to switch to last window'
		type: #String>
		
	^ self nameForKey: (self keyToDescriptionBindingsSwitching keyAtValue: #lastWindow)