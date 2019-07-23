handling
filterEvent: mouseOrKeyboardEvent for: anObject

	mouseOrKeyboardEvent commandKeyPressed ifTrue: [
		(WAHandler new handle: mouseOrKeyboardEvent)
			ifTrue: [^ mouseOrKeyboardEvent ignore "hit!"]].
		
	^ mouseOrKeyboardEvent