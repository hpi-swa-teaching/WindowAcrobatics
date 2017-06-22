spaces
spaceToLeft

	self spaceVisualization ifNotNil: [self spaceVisualization delete].
	WASwitcher spaceNumber = 1 ifFalse: [ 
	(self getSystemWindows) do: [:w | self moveWindowRight: w.].
	self decreaseSpaceNumber.
	self spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber).
	]