preferences
alignTopKey
	<preference: 'Aligns window top'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window on the top side.'
		type: #String>
		
	^ (self keyToDescriptionBindings) keyAtValue: 'alignTop'