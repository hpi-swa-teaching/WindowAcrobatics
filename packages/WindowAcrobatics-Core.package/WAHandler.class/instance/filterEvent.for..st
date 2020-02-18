handling
filterEvent: mouseOrKeyboardEvent for: anObject

	mouseOrKeyboardEvent commandKeyPressed ifTrue: [
		(self handle: mouseOrKeyboardEvent)
			ifTrue: [^ mouseOrKeyboardEvent ignore "hit!"]].
		
	^ mouseOrKeyboardEvent