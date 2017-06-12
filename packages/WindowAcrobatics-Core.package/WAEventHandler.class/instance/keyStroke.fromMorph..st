keyboard - handling
keyStroke: aKeyboardEvent fromMorph: aMorph

	(self tabAmongFields and: [aKeyboardEvent keyCharacter = Character tab])
		ifTrue: [self shouldBeImplemented].
		
	self
		handleShortcut: aKeyboardEvent;
		keyStroked: aKeyboardEvent.
		
	(#(3 13 10) includes: aKeyboardEvent keyValue)
		ifTrue: [self returnStroked].