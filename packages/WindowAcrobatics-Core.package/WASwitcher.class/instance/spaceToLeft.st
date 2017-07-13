spaces
spaceToLeft

	self spaceVisualization ifNotNil: [self spaceVisualization delete].
	(WASwitcher spaceNumber ~= 1 and: (WAExpose hasDashboard not)) ifTrue: [ 
		(self getSystemWindows) do: [:w | self moveWindowRight: w.].
		self decreaseSpaceNumber.
		self spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber).
		].
	(WASwitcher spaceNumber ~= 1 and: WAExpose hasDashboard) ifTrue: [
		WAExpose allInstancesDo: #delete.
		(self getSystemWindows) do: [:w | self moveWindowRight: w.].
		self decreaseSpaceNumber.
		WAExpose open.
		self spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber).
		].