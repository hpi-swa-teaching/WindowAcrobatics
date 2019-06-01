handling
findWindowToAlignIfEmpty: aBlock

	^ self windowsInCurrentSpace
		ifEmpty: aBlock 
		ifNotEmpty: [self windowsInCurrentSpace first]