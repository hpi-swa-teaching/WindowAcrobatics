preferences - components
activateSwitching
	<preference: 'Activate Switching And Spaces'
		category: #WindowAcrobatics
		description: 'Acivates switching between Windows and spaces'
		type: #Boolean>
	
	^ SwitchingActive ifNil: [true]