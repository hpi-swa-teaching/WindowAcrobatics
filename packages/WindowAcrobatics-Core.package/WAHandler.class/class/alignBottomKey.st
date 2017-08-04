preferences
alignBottomKey
	
	<preference: 'Align active window at bottom upon pressing Cmd/Alt and:'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window on the bottom side. Cmd for Mac OS sytems and Alt for Windows and Unix systems'
		type: #String>
		
	^ self stripOffCmd: (self keyToDescriptionBindingsAlignment keyAtValue: #alignBottom)