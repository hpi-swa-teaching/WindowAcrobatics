preferences
alignLeftKey
	<preference: 'Aligns window left'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window on the lefthand side.'
		type: #String>
		
	^ (self keyToDescriptionBindings) keyAtValue: 'alignLeft'