spaces
spaceToLeft

	self createSpaceVisualizations.
	self notInFirstSpace ifTrue: [
			(self decreaseSpaceNumber;
				 spaceVisualization: (WASpaceNumber new: self class spaceNumber);
				 allSystemWindows) do: [:w | self moveWindowRight: w].
			WAExpose hasDashboard
				ifTrue: [ WAExpose allInstancesDo: #delete. WAExpose open ]].