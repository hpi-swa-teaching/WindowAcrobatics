preferences
alignRightKey
	<preference: 'Align active window at right upon pressing Cmd/Alt and:'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window on the righthand side. Cmd for Mac OS sytems and Alt for Windows and Unix systems'
		type: #String>
		
	^ ((self keyToDescriptionBindingsAlignment) keyAtValue: 'alignRight') copyFrom: 6 to: ((self keyToDescriptionBindingsAlignment) keyAtValue: 'alignRight') size - 1