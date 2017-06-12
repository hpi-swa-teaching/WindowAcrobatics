keyboard - handling
keyDown: aKeyboardEvent fromMorph: aMorph

	self keyPressed: aKeyboardEvent.
	
	(#(3 13 10) includes: aKeyboardEvent keyValue)
		ifTrue: [self returnPressed].