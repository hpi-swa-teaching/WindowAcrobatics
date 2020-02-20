preferences - components
activateAlignment
	<preference: 'Activate Window Alignment'
		category: #WindowAcrobatics
		description: 'Acivates the Window Alignment.'
		type: #Boolean>
		
	^ AlignmentActive ifNil: [true]