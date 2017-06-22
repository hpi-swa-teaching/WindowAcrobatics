preferences
alignLastUsedWindows
	<preference: 'Set number of windows to show in tile view:'
		category: #WindowAcrobatics
		description: 'Registers the number of windows to align in a grid. Numbers will be rounded to 2, 4 or 6.'
		type: #Number>
		
	^ self numberOfLastWindows
	