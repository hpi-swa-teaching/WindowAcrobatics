preferences
alignRightKey
	<preference: 'Aligns window right'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window on the righthand side.'
		type: #String>
		
	^ (self keyToDescriptionBindings) keyAtValue: 'alignRight'