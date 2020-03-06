preferences - keys
keyToAlignFull
	<preference: 'Align active window fullscreen upon pressing Cmd/Alt and:'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window fullscreen. Cmd for Mac OS sytems and Alt for Windows and Unix systems'
		type: #String>

	^ self nameForKey: (self keyToDescriptionBindingsAlignment keyAtValue: #alignFull)