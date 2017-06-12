keyboard - handling
keyboardFocusChange: aBoolean inSubmorph: aSubmorph fromMorph: aMorph

	aBoolean
		ifTrue: [self focusReceivedInSubmorph: aSubmorph]
		ifFalse: [self focusLostInSubmorph: aSubmorph].
		
	aMorph owner ifNotNil: [:owner |
		owner keyboardFocusChange: aBoolean inSubmorph: aSubmorph].