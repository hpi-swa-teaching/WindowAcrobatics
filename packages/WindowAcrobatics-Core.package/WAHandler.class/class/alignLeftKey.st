preferences
alignLeftKey
	<preference: 'Align active window at left upon pressing Cmd/Alt and:'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window on the lefthand side. Cmd for Mac OS sytems and Alt for Windows and Unix systems'
		type: #String>
		
	^ ((self keyToDescriptionBindingsAlignment) keyAtValue: 'alignLeft') copyFrom: 6 to: ((self keyToDescriptionBindingsAlignment) keyAtValue: 'alignLeft') size - 1