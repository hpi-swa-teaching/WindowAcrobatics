as yet unclassified
activateWindowAcrobatics
	<preference: 'Activate WA'
		category: #WindowAcrobatics
		description: 'Registers the keyboard shortcut to open WA.'
		type: #String>
		
	^ self activationString ifNil: ['true']