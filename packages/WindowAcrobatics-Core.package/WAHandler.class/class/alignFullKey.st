preferences
alignFullKey
	<preference: 'Aligns window fullscreen'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to align a window fullscreen'
		type: #String>
		
	^ (self keyToDescriptionBindings) keyAtValue: 'alignFull'