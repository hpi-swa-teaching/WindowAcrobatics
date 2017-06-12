mouse - handling
mouseDown: aMouseEvent fromMorph: aMorph

	aMouseEvent hand
		waitForClicksOrDrag: aMorph
		event: aMouseEvent
		selectors: #(click: doubleClick: doubleClickTimeout: startDrag:)
		threshold: self dragThreshold.
		
	self mousePressed: aMouseEvent.  