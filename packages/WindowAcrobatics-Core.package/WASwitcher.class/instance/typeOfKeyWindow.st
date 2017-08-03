helper
typeOfKeyWindow

	(self windowsInCurrentSpace) 
		ifNotEmpty: [ ^ (self windowsInCurrentSpace first) model asString ]
		ifEmpty: [ ^ false ].
	
