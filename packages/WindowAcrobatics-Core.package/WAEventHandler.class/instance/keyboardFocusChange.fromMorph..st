keyboard - handling
keyboardFocusChange: aBoolean fromMorph: aMorph

	"Give the morph a chance to update its appearance."
	aMorph redrawLater.

	aBoolean
		ifTrue: [self focusReceived]
		ifFalse: [self focusLost].
		
	aMorph owner ifNotNil: [:owner |
		owner keyboardFocusChange: aBoolean inSubmorph: aMorph].