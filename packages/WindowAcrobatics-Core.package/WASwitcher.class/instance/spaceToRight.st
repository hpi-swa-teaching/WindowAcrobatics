spaces
spaceToRight

	self createSpaceVisualizations.
	self notInLastSpace
		ifTrue: [
			(self
				increaseSpaceNumber;
				spaceVisualization: (WASpaceNumber new: WASwitcher spaceNumber);
				allSystemWindows) do: [:w | self moveWindowLeft: w].
			WAExpose hasDashboard
				ifTrue: [ WAExpose allInstancesDo: #delete.
					WAExpose open ]].