preferences
openDashboardKey
	<preference: 'Opens Window Dashboard'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to open a Window Dashboard.'
		type: #String>
		
	^ (self keyToDescriptionBindings) keyAtValue: 'openDashboard'