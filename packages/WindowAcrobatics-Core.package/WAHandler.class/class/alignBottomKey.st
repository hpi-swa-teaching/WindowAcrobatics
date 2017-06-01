preferences
alignBottomKey
	<preference: 'Aligns window bottom'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window on the bottom side.'
		type: #String>
		
	^ (self keyToDescriptionBindings) keyAtValue: 'alignBottom'