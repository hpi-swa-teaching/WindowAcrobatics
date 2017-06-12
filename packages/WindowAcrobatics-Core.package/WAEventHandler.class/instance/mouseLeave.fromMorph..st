mouse - handling
mouseLeave: aMouseEvent fromMorph: aMorph

	self mouseLeft: aMouseEvent.

	self releaseKeyboardOnMouseLeave
		ifTrue: [aMorph releaseKeyboard].