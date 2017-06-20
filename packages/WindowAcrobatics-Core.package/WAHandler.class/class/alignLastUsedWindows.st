preferences
alignLastUsedWindows
	<preference: 'Set number of windows to show in tile view:'
		category: #WindowAcrobatics
		description: 'Registers the number of windows to align in a grid. Min 2, max 6.'
		type: #Number>
		
	^ self numberOfLastWindows
	