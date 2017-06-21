spaces
spaceToLeft

	| windows |
	self spaceVisualization ifNotNil: [self spaceVisualization delete].
	WASwitcher spaceNumber = 1 ifFalse: [ 
	windows := ActiveWorld submorphs select: [:w | w isSystemWindow].
	windows do: [:w | self moveWindowRight: w.].
	WASwitcher spaceNumber: WASwitcher spaceNumber -1.
	self spaceVisualization: (WASpaceNumber new with: WASwitcher spaceNumber).
	]