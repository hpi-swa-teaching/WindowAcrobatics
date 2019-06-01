as yet unclassified
applyToWindow: aWindow for: anAligner

	anAligner
		align: aWindow
		positionFraction: (self horizontalPosition = #right) asBit @ (self verticalPosition = #bottom) asBit / 2
		extentFraction: 1 @ 1 / 2