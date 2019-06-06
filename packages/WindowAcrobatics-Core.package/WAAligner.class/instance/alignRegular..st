handling
alignRegular: aWindow
	
	| bounds |
	bounds := aWindow unexpandedFrame
		ifNil: [lastBounds at: aWindow ifAbsent: [^ self]].
	aWindow bounds: bounds.