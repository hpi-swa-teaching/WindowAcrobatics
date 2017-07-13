spaces
spaceToRight

	self spaceVisualization ifNotNil: [self spaceVisualization delete].
	(WASwitcher spaceNumber ~= 3 and: (WAExpose hasDashboard not)) ifTrue: [
		(self getSystemWindows) do: [:w | self moveWindowLeft: w.].
		self increaseSpaceNumber.
		self spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber).
		].
	(WASwitcher spaceNumber ~= 3 and: WAExpose hasDashboard) ifTrue: [
		WAExpose allInstancesDo: #delete.
		(self getSystemWindows) do: [:w | self moveWindowLeft: w.].
		self increaseSpaceNumber.
		WAExpose open.
		self spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber).
		].