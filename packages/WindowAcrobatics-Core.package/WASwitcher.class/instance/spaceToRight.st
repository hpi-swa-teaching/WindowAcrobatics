spaces
spaceToRight

	self spaceVisualization ifNotNil: [self spaceVisualization delete].
	WASwitcher spaceNumber = 3 ifFalse: [
	(self getSystemWindows) do: [:w | self moveWindowLeft: w.].
	self increaseSpaceNumber.
	self spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber).
	]