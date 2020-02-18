accessing
numberOfSpaces

	<preference: 'Number of spaces'
		category: #WindowAcrobatics
		description: 'Specify how many spaces WindowAcrobatics should manage.'
		type: #Number>
	
	^ NumberOfSpaces ifNil: [3]