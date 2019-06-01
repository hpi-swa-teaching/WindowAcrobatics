as yet unclassified
applyToWindow: aWindow for: anAligner

	(#(left right) includes: self side)
		ifTrue: [^ anAligner align: aWindow positionFraction: (self side = #right) asBit @ 0 / 2 extentFraction: 1 @ 2 / 2].
	(#(top bottom) includes: self side)
		ifTrue: [^ anAligner align: aWindow positionFraction: 0 @ (self side = #bottom) asBit / 2 extentFraction: 2 @ 1 / 2].
	self error: 'Invalid side'.