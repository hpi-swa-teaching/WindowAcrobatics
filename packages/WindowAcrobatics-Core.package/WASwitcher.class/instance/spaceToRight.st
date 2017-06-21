spaces
spaceToRight

	| windows |
	self spaceVisualization ifNotNil: [self spaceVisualization delete].
	WASwitcher spaceNumber = 3 ifFalse: [
	windows := ActiveWorld submorphs select: [:w | w isSystemWindow].
	windows do: [:w | self moveWindowLeft: w.].
	WASwitcher spaceNumber: WASwitcher spaceNumber + 1.
	self spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber).
	]