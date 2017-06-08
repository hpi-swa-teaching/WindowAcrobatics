preferences
openDashboardKey
	<preference: 'Opens Window Dashboard upon pressing Cmd/Alt and:'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to open a Window Dashboard. Cmd for Mac OS sytems and Alt for Windows and Unix systems'
		type: #String>
		
	^ ((self keyToDescriptionBindingsDashboard) keyAtValue: 'openDashboard') copyFrom: 6 to: ((self keyToDescriptionBindingsDashboard) keyAtValue: 'openDashboard') size - 1