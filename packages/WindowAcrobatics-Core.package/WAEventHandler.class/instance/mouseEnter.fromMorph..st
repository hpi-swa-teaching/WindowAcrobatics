mouse - handling
mouseEnter: aMouseEvent fromMorph: aMorph

	self mouseEntered: aMouseEvent.
	
	self grabKeyboardOnMouseEnter
		ifTrue: [aMorph grabKeyboard].