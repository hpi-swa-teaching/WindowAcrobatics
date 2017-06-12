as yet unclassified
initialize 

	super initialize.
	
	self initializeKeyBindings. 
	self switcher: WASwitcher new.
	self aligner: WAAligner new. 