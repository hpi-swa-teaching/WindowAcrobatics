mouse - handling
mouseUp: aMouseEvent fromMorph: aMorph

	(self handlesMouseUp: aMouseEvent)
		ifTrue: [self mouseReleased: aMouseEvent].