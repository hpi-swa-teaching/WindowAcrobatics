handling
alignLastTwoWindows

	|windows|

	windows := self windowsInCurrentSpace.
	
	windows size > 0 ifTrue: [(windows at: 1) position: (self windowPositions at: #leftTop); extent: (self windowExtents at: #horizontalHalf)].
	windows size > 1 ifTrue: [(windows at: 2) position: (self windowPositions at: #centerTop); extent: (self windowExtents at: #horizontalHalf)].