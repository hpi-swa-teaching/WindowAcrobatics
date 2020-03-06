preferences - keys
keyToCycleWindows
	<preference: 'Cycle through windows of current type upon pressing Cmd/Alt and shift and:'
		category: #WindowAcrobatics   
		description: 'Registers the keyboard shortcut to cycle through windows of the current type. Cmd for Mac OS sytems and Alt for Windows and Unix systems'   
		type: #String>     
		
	^ self nameForKey: (self keyToDescriptionBindingsSwitching keyAtValue: #cycle)