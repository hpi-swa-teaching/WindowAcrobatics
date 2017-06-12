mouse - handling
mouseWheel: aMouseEvent fromMorph: aMorph

	(self handlesMouseWheel: aMouseEvent)
		ifTrue: [
			aMouseEvent isWheelUp
				ifTrue: [self mouseWheelUp: aMouseEvent].
			aMouseEvent isWheelDown
				ifTrue: [self mouseWheelDown: aMouseEvent]].