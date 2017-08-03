preferences
alignLastUsedWindowsKey
	<preference: 'Align four last used windows in a grid upon pressing Cmd/Alt and:'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align the four last used windows in a grid. Cmd for Mac OS sytems and Alt for Windows and Unix systems'
		type: #String>
		
	^ self stripOffCmd: (self keyToDescriptionBindingsAlignment keyAtValue: 'alignLastUsedWindows')
	