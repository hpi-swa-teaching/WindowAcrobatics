handling
alignRegular: aWindow
	
	| bounds |
	bounds := aWindow unexpandedFrame ifNil: [^ self].
	aWindow bounds: bounds.